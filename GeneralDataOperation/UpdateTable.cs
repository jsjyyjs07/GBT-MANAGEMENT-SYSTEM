using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Data.SqlClient;
using DatabaseConnection;
using System.Collections;

namespace GeneralDataOperation
{
    public class UpdateTable
    {
        BasicQuery bq = new BasicQuery();
        /// <summary>
        /// 添加、更新、删除数据库中的内容（单表）
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="TransactionTable">更改后的表集合（表结构须和SQL的查询语法的表结构相同）</param>
        public void Update(string tableName, DataTable TransactionTable)
        {
            SqlDataAdapter sda = new SqlDataAdapter("select * from " + tableName + " where 1=2", ConnectionString.sqlconnection);
            sda.Fill(TransactionTable);
            SqlCommandBuilder scb = new SqlCommandBuilder(sda);
            sda.DeleteCommand = scb.GetDeleteCommand();
            sda.UpdateCommand = scb.GetUpdateCommand();
            sda.InsertCommand = scb.GetInsertCommand();
            sda.Update(TransactionTable);
        }

        /// <summary>
        /// 同步更新，此方法只用于特定同步更新语法且只在框架内部使用
        /// </summary>
        /// <param name="UpdateScript">同步更新语法</param>
        /// <returns>受影响的行数</returns>
        public int UpdateSync(string UpdateScript)
        {
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                SqlCommand scomm = new SqlCommand(UpdateScript, sconn);
                int returnValue = 0;
                if (sconn.State != ConnectionState.Open)
                {
                    sconn.Open();
                }
                returnValue = scomm.ExecuteNonQuery();
                if (sconn.State == ConnectionState.Open)
                {
                    sconn.Close();
                }
                return returnValue;
            }
        }

        /// <summary>
        /// 向数据库的表中添加数据（参数化SQL语法，单表操作）
        /// </summary>
        /// <param name="strSQL">SQL查询语句</param>
        /// <param name="tableName">表名</param>
        /// <param name="ColumnsValue">字段值（匹配SQL查询语句的字段顺序，为*（所有字段）时，则匹配数据库表字段顺序）</param>
        /// <returns></returns>
        public int InsertIntoDataTheTable(string strSQL, string tableName, params object[] ColumnsValue)
        {
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                StringBuilder sbColumnsValue = new StringBuilder();
                StringBuilder sbColumns = new StringBuilder();
                int result = 0;
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                dt = bq.Query(strSQL, tableName).Tables[0];
                //字段名
                for (int CurrentColumn = 0; CurrentColumn < dt.Columns.Count; CurrentColumn++)
                {
                    if (CurrentColumn == dt.Columns.Count - 1)
                    {
                        sbColumns.Append(dt.Columns[CurrentColumn].ColumnName);
                    }
                    else
                    {
                        sbColumns.Append(dt.Columns[CurrentColumn].ColumnName + ",");
                    }
                }
                //字段值参数名（用字段名标识）
                for (int CurrentValue = 0; CurrentValue < ColumnsValue.Length; CurrentValue++)
                {
                    if (CurrentValue == ColumnsValue.Length - 1)
                    {
                        sbColumnsValue.Append("@" + dt.Columns[CurrentValue].ColumnName);
                    }
                    else
                    {
                        sbColumnsValue.Append("@" + dt.Columns[CurrentValue].ColumnName + ",");
                    }
                }
                SqlCommand scomm = new SqlCommand("Insert into " + dt.TableName + "(" + sbColumns.ToString() + ") values(" + sbColumnsValue.ToString() + ")", sconn);
                //字段值
                for (int CurrentValue = 0; CurrentValue < ColumnsValue.Length; CurrentValue++)
                {
                    scomm.Parameters.AddWithValue("@" + dt.Columns[CurrentValue].ColumnName, ColumnsValue[CurrentValue]);
                }
                if (sconn.State == ConnectionState.Closed)
                {
                    sconn.Open();
                }
                result = scomm.ExecuteNonQuery();
                if (sconn.State == ConnectionState.Open)
                {
                    sconn.Close();
                }
                return result;
            }
        }

        /// <summary>
        /// 数量金额反过账(查询目标表，若无来源表数据时，清空来源表中的目标表相关字段数据；
        /// 若不为空时，统计目标表数据并更新到来源表中目标表相关的字段数据)  //待修正
        /// </summary>
        /// <param name="currentTable"></param>
        /// <param name="sourceTableName"></param>
        /// <param name="ColumnsName"></param>
        public void Posting(DataTable currentTable, string sourceTableName, string currentTableName, string OriginalColumnName,string currentColumnName)
        {
            ArrayList array = new ArrayList();
            DataTable originalTable = new DataTable();
            StringBuilder sbUpdateSql = new StringBuilder();
            StringBuilder sbTotalSelect = new StringBuilder();
            foreach (DataRow dr in currentTable.Rows)
            {
                if (dr.RowState.ToString() == "Deleted")
                {
                    //统计目标表中来源表的数量或金额
                    sbTotalSelect.Append("SELECT SUM(" + currentColumnName + ") AS " + currentColumnName + 
                        " FROM " + currentTableName + " WHERE FromBillNo= " + 
                    dr["FromBillNo", DataRowVersion.Original].ToString());
                    originalTable = bq.Query(sbTotalSelect.ToString()).Tables[0];
                    //根据以上的统计信息，产生更新来源表的数据过账语法
                    sbUpdateSql.Append("UPDATE " + sourceTableName + " SET ");
                    sbUpdateSql.Append(currentColumnName + " = " + (string.IsNullOrEmpty(originalTable.Rows[0][currentColumnName].ToString()) ? "0" : originalTable.Rows[0][currentColumnName].ToString()));
                    sbUpdateSql.Append(" FROM " + sourceTableName + ";");
                    array.Add(sbUpdateSql.ToString());
                    sbTotalSelect.Clear();
                    sbUpdateSql.Clear();
                }
                if (dr.RowState.ToString() == "Added")
                {
                    
                }
            }
            for (int CurrentUpdateSql = 0; CurrentUpdateSql < array.Count; CurrentUpdateSql++)
            {
                //UpdateSync(array[CurrentUpdateSql].ToString());
            }
        }
    }
}
