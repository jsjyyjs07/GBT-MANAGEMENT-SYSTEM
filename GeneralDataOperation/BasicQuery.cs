using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DatabaseConnection;
using System.Data.SqlClient;
using System.Data.Common;

namespace GeneralDataOperation
{
    public class BasicQuery
    {
        /// <summary>
        /// 获取用户姓名
        /// </summary>
        /// <param name="userName">用户名</param>
        /// <returns></returns>
        public string getName(string userName)
        {
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                SqlCommand scomm = new SqlCommand("select Name from Users where UserName = @username", sconn);
                scomm.Parameters.AddWithValue("@username", userName);
                sconn.Open();
                SqlDataReader sr = scomm.ExecuteReader();
                string name = "";
                while (sr.Read())
                {
                    name = sr["Name"].ToString();
                }
                return name;
            }
        }

        #region 字段名重命名为对应的描述 单个表
        /// <summary>
        /// 查询字符串 字段名重命名为对应的描述
        /// </summary>
        /// <param name="TableName">表名</param>
        /// <param name="where">条件</param>
        /// <returns></returns>
        private string SearchSQLScript(string TableName)
        {
            StringBuilder sbd = new StringBuilder();
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                SqlCommand scomm = new SqlCommand("SELECT " +
                    "ColumnsName = c.name, " +
                    "TableDecription = (SELECT a.[value] FROM sys.extended_properties a left JOIN  sysobjects b ON a.major_id=b.id WHERE b.name=OBJECT_NAME(c.object_id) and a.minor_id=0 )," +
                    "Description = ex.value, " +
                    "ColumnType = t.name, " +
                    "Length = c.max_length " +
                    "FROM " +
                    "sys.columns c " +
                    "LEFT OUTER JOIN " +
                    "sys.extended_properties ex " +
                    "ON " +
                    "ex.major_id = c.object_id " +
                    "AND ex.minor_id = c.column_id " +
                    "AND ex.name = 'MS_Description' " +
                    "left outer join " +
                    "systypes t " +
                    "on c.system_type_id = t.xtype " +
                    "WHERE " +
                    "OBJECTPROPERTY(c.object_id, 'IsMsShipped') = 0 " +
                    "AND OBJECT_NAME(c.object_id) = @table " +
                    "AND c.name not like '%inner%' AND c.name != 'Password'", sconn);
                scomm.Parameters.AddWithValue("@table", TableName);
                SqlDataAdapter sda = new SqlDataAdapter(scomm);
                sda.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                DataSet ds = new DataSet();
                sconn.Open();
                sda.Fill(ds, TableName);
                int CurrentNum = 0;
                int Count = ds.Tables[0].Rows.Count;

                using (SqlDataReader sdr = scomm.ExecuteReader())
                {
                    while (sdr.Read())
                    {
                        CurrentNum++;

                        if (CurrentNum != Count)
                        {
                            if (CurrentNum == 1)
                            {
                                sbd.Append("select " + sdr[sdr.GetName(0)].ToString() + " AS "
                                    + (sdr[sdr.GetName(1)].ToString() == "" ? sdr[sdr.GetName(0)].ToString() : sdr[sdr.GetName(1)].ToString()) + " ,");
                            }
                            else
                            {
                                sbd.Append(sdr[sdr.GetName(0)].ToString() + " AS "
                                    + (sdr[sdr.GetName(1)].ToString() == "" ? sdr[sdr.GetName(0)].ToString() : sdr[sdr.GetName(1)].ToString()) + " ,");
                            }
                        }
                        else
                        {
                            sbd.Append(sdr[sdr.GetName(0)].ToString() + " AS "
                                + (sdr[sdr.GetName(1)].ToString() == "" ? sdr[sdr.GetName(0)].ToString() : sdr[sdr.GetName(1)].ToString()) +
                                " from " + TableName + ";");
                        }
                    }
                }
            }
            return sbd.ToString();
        }

        /// <summary>
        /// 获取字段名及字段类型清单
        /// </summary>
        /// <param name="table">表</param>
        /// <returns></returns>
        public DataTable FieldName(string table)
        {
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                SqlCommand scomm = new SqlCommand(SearchSQLScript(table), sconn);
                SqlDataAdapter sda = new SqlDataAdapter(scomm);
                sda.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                DataSet ds = new DataSet();
                sda.Fill(ds, table);
                DataTable dt = new DataTable();
                dt.Columns.Add(table);
                int CurrentNum = 0;
                foreach (DataColumn dc in ds.Tables[0].Columns)
                {
                    CurrentNum++;
                    dt.Rows.Add(dc.ColumnName);
                }
                return dt;
            }
        }
        #endregion

        #region 字段名重命名为对应的描述
        /// <summary>
        /// 获取表字段信息 表名排列顺序为：主表，明细表，主表中存在InnerID、BillNo两个字段并且为主键，
        /// 明细表中存在 主表表名+InnerID、主表表名+BillNo两个字段并且为主表的外键（待改善，考虑外键表字段）
        /// </summary>
        /// <param name="IsHeader">是否只显示主表字段</param>
        /// <param name="TableNames">表集合</param>
        /// <returns></returns>
        public DataTable GetColumnsInformation(bool IsHeader, params string[] TableNames)
        {
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                StringBuilder sbTableInner = new StringBuilder();
                DataSet ds = new DataSet();
                DataTable dt = new DataTable();
                if (!IsHeader)
                {
                    for (int CurrentTable = 0; CurrentTable < TableNames.Length; CurrentTable++)
                    {
                        if (CurrentTable == TableNames.Length - 1)
                        {
                            sbTableInner.Append("@" + TableNames[CurrentTable]);
                        }
                        else
                        {
                            sbTableInner.Append("@" + TableNames[CurrentTable] + ",");
                        }
                    }
                }
                else
                {
                    sbTableInner.Append("@" + TableNames[0]);
                }
                SqlCommand scomm = new SqlCommand("SELECT TableName = OBJECT_NAME(c.object_id)," +
                    "TableDecription = (SELECT a.[value] FROM sys.extended_properties a left JOIN  sysobjects b ON a.major_id=b.id WHERE b.name=OBJECT_NAME(c.object_id) and a.minor_id=0 )," +
                    "ColumnsName = c.name, Description = ex.value, ColumnType = t.name, " +
                    "Length = c.max_length, strCount = len(OBJECT_NAME(c.object_id)) " +
                    "FROM sys.columns c LEFT OUTER JOIN sys.extended_properties ex " +
                    "ON ex.major_id = c.object_id AND ex.minor_id = c.column_id AND ex.name = 'MS_Description' " +
                    "left outer join systypes t on c.system_type_id = t.xtype WHERE " +
                    "OBJECTPROPERTY(c.object_id, 'IsMsShipped') = 0 " +
                    "AND OBJECT_NAME(c.object_id) in (" + sbTableInner.ToString() + ") " +
                    "AND t.name != 'sysname' order by strCount", sconn);
                if (!IsHeader)
                {
                    for (int CurrentTable = 0; CurrentTable < TableNames.Length; CurrentTable++)
                    {
                        scomm.Parameters.AddWithValue("@" + TableNames[CurrentTable], TableNames[CurrentTable]);
                    }
                }
                else
                {
                    scomm.Parameters.AddWithValue("@" + TableNames[0], TableNames[0]);
                }
                SqlDataAdapter sda = new SqlDataAdapter(scomm);
                sda.MissingSchemaAction = MissingSchemaAction.AddWithKey;//添加必须的列和主键信息以完成架构
                sda.Fill(ds, "FieldTable");
                dt = ds.Tables[0];
                dt.Columns.Add("InnerColumns");
                dt.Columns.Add("InnerColumnsCN");
                for (int CurrentRow = 0; CurrentRow < dt.Rows.Count; CurrentRow++)
                {
                    dt.Rows[CurrentRow]["InnerColumns"] = dt.Rows[CurrentRow]["TableName"] + "." +
                        dt.Rows[CurrentRow]["ColumnsName"];
                    dt.Rows[CurrentRow]["InnerColumnsCN"] = dt.Rows[CurrentRow]["TableDecription"] + "-" +
                        dt.Rows[CurrentRow]["Description"];

                }
                return dt;
            }
        }

        /// <summary>
        /// 查询表(单表单条件，用户表头数据查询及Combobox控件数据绑定)（受限，一定要有InnerID关联字段）
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="where">条件</param>
        /// <returns></returns>
        public DataTable Query(string tableName, string where, string srcTable)
        {
            //DataTable dtColumns = new DataTable();
            //dtColumns = GetColumnsInformation(false, new string[] { tableName });
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM " + tableName +
                " WHERE InnerID LIKE @where ORDER BY 2", ConnectionString.sqlconnection))
            {
                SqlParameter parm = new SqlParameter("@where", "%" + where + "%");
                sda.SelectCommand.Parameters.Add(parm);
                DataSet ds = new DataSet();
                sda.Fill(ds, srcTable);
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
                return dt;
            }
        }

        /// <summary>
        /// 查询表(单表单条件，用户表头数据查询及Combobox控件数据绑定)
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="ColumnName">字段名</param>
        /// <param name="ColumnValue">条件</param>
        /// <returns></returns>
        public DataTable Query(string tableName, string ColumnName, string ColumnValue, string srcTable)
        {
            //DataTable dtColumns = new DataTable();
            //dtColumns = GetColumnsInformation(false, new string[] { tableName });
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM " + tableName +
                " WHERE " + ColumnName + " LIKE @where ORDER BY 2", ConnectionString.sqlconnection))
            {
                SqlParameter parm = new SqlParameter("@where", "'%" + ColumnValue + "%'");
                sda.SelectCommand.Parameters.Add(parm);
                DataSet ds = new DataSet();
                sda.Fill(ds, srcTable);
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
                return dt;
            }
        }

        /// <summary>
        /// 查询表(主要用于下拉框数据初始化）
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="srcTable"></param>
        /// <param name="fieldName">字段列表</param>
        /// <returns></returns>
        public DataTable QueryBasic(string tableName, string srcTable,params string[] fieldName)
        {
            StringBuilder strb = new StringBuilder();
            foreach (string subStr in fieldName)
            {        
                if (subStr == fieldName[fieldName.Length - 1].ToString())
                {
                    strb.Append(subStr);
                }
                else
                {
                    strb.Append(subStr + ",");
                }
            }
            using (SqlDataAdapter sda = new SqlDataAdapter("SELECT " + strb.ToString() + " FROM " + tableName, 
                ConnectionString.sqlconnection))
            {
                DataSet ds = new DataSet();
                sda.Fill(ds, srcTable);
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
                return dt;
            }
        }

        /// <summary>
        /// 自定义SQL语法查询（受限：只能操作一个表）
        /// </summary>
        /// <param name="IsAlias">是否启用别名</param>
        /// <param name="strSQL">SQL语法</param>
        /// <param name="tableName">表名</param>
        /// <returns></returns>
        public DataTable Query(bool IsAlias, string strSQL, string tableName)
        {
            DataTable dtColumns = new DataTable();
            dtColumns = GetColumnsInformation(false, new string[] { tableName });
            using (SqlDataAdapter sda = new SqlDataAdapter(strSQL, ConnectionString.sqlconnection))
            {
                DataTableMapping mapping = sda.TableMappings.Add(tableName, dtColumns.Rows[0]["TableDecription"].ToString());
                for (int CurrentRow = 0; CurrentRow < dtColumns.Rows.Count; CurrentRow++)
                    mapping.ColumnMappings.Add(dtColumns.Rows[CurrentRow]["ColumnsName"].ToString(),
                        dtColumns.Rows[CurrentRow]["Description"].ToString());
                DataSet ds = new DataSet();
                if (IsAlias)
                {
                    sda.Fill(ds, mapping.SourceTable);
                }
                else
                {
                    sda.Fill(ds, mapping.DataSetTable);
                }
                DataTable dt = new DataTable();
                dt = ds.Tables[0];
                return dt;
            }
        }

        /// <summary>
        /// 高级查询（自定义语法）
        /// </summary>
        /// <param name="strSQL"></param>
        /// <returns>DataSet</returns>
        public DataSet Query(string strSQL, string srcTable = "Query")
        {
            using (SqlDataAdapter sda = new SqlDataAdapter(strSQL, ConnectionString.sqlconnection))
            {
                DataSet ds = new DataSet();
                sda.Fill(ds, srcTable);
                return ds;
            }
        }

        /// <summary>
        /// 根据用户选择字段名及运算符查询（受限：目前只能查询一个表）
        /// </summary>
        /// <param name="IsAlias">是否别名显示</param>
        /// <param name="ObjectValue">字段名</param>
        /// <param name="OperatorValue">运算符</param>
        /// <param name="SearchValue">值</param>
        /// <param name="table">表</param>
        /// <returns></returns>
        public DataTable DataBasicQuery(bool IsAlias, string ObjectValue, string OperatorValue, string SearchValue, params string[] table)
        {
            DataTable dtColumns = new DataTable();
            dtColumns = GetColumnsInformation(false, table);
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                SqlCommand scomm = new SqlCommand("SELECT * FROM " + table[0] + " " +
                    SQLWhereScript(ObjectValue, OperatorValue, SearchValue) + " Order by 2", sconn);
                SQLWhereParam(scomm, ObjectValue, OperatorValue, SearchValue);
                SqlDataAdapter sda = new SqlDataAdapter(scomm);
                sda.MissingSchemaAction = MissingSchemaAction.AddWithKey;
                DataTableMapping mapping = sda.TableMappings.Add(table[0], dtColumns.Rows[0]["TableDecription"].ToString());
                for (int CurrentRow = 0; CurrentRow < dtColumns.Rows.Count; CurrentRow++)
                    mapping.ColumnMappings.Add(dtColumns.Rows[CurrentRow]["ColumnsName"].ToString(),
                        dtColumns.Rows[CurrentRow]["Description"].ToString());
                DataSet ds = new DataSet();
                if (IsAlias)
                {
                    sda.Fill(ds, mapping.SourceTable);
                }
                else
                {
                    sda.Fill(ds, mapping.DataSetTable);
                }
                return ds.Tables[0];
            }
        }
        #endregion

        /// <summary>
        /// 运算符 
        /// </summary>
        /// <returns></returns>
        public DataTable Operator()
        {
            using (SqlConnection sconn = new SqlConnection(ConnectionString.sqlconnection))
            {
                SqlCommand scomm = new SqlCommand("select BillNo,Operator,Description,ColumnType from Operators order by BillNo", sconn);
                SqlDataAdapter sda = new SqlDataAdapter(scomm);
                DataSet ds = new DataSet();
                sda.Fill(ds, "Operators");
                return ds.Tables[0];
            }
        }

        /// <summary>
        /// 根据运算符生成WHERE条件语法（带参数，修复SQL注入漏洞）
        /// </summary>
        /// <param name="ObjectValue">字段名</param>
        /// <param name="OperatorValue">运算符</param>
        /// <param name="SearchValue">值</param>
        /// <returns></returns>
        internal string SQLWhereScript(string ObjectValue, string OperatorValue, string SearchValue)
        {
            StringBuilder whereScript = new StringBuilder();
            StringBuilder Value = new StringBuilder();
            string[] array = SearchValue.Split(new string[] { " ", ",", "，", ";" }, StringSplitOptions.RemoveEmptyEntries);
            StringBuilder strReplace = new StringBuilder();
            if (whereScript.ToString().IndexOf(" WHERE ") < 1)
            {
                whereScript.Append(" WHERE ");
            }
            switch (OperatorValue)
            {
                case "Like":
                    whereScript.Append(ObjectValue + " LIKE @SearchValue");
                    break;
                case "LeftLike":
                    whereScript.Append(ObjectValue + " LIKE @SearchValue");
                    break;
                case "RightLike":
                    whereScript.Append(ObjectValue + " LIKE @SearchValue");
                    break;
                case "NotLike":
                    whereScript.Append(ObjectValue + " NOT LIKE @SearchValue");
                    break;
                case "In":
                    Value.Clear();
                    if (SearchValue == "")
                    {
                        Value.Append("''");
                    }
                    else
                    {
                        for (int CurrentItem = 0; CurrentItem < array.Length; CurrentItem++)
                        {
                            if (CurrentItem == 0)
                            {
                                Value.Append("@array0");
                            }
                            else
                            {
                                Value.Append(", @array" + CurrentItem.ToString());
                            }
                        }
                    }
                    whereScript.Append(ObjectValue + " IN (" + Value.ToString() + ")");
                    break;
                case "NotIn":
                    Value.Clear();
                    if (SearchValue == "")
                    {
                        Value.Append("''");
                    }
                    else
                    {
                        for (int CurrentItem = 0; CurrentItem < array.Length; CurrentItem++)
                        {
                            if (CurrentItem == 0)
                            {
                                Value.Append("@array0");
                            }
                            else
                            {
                                Value.Append(", @array" + CurrentItem.ToString());
                            }
                        }
                    }
                    whereScript.Append(ObjectValue + " NOT IN (" + Value.ToString() + ")");
                    break;
                case "Between":
                    array = SearchValue.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                    if (array.Length > 1)
                    {
                        whereScript.Append(ObjectValue + " BETWEEN @array0 AND @array1");
                    }
                    else if (SearchValue == "")
                    {
                        whereScript.Append(ObjectValue + " BETWEEN '' AND ''");
                    }
                    else
                    {
                        whereScript.Append(ObjectValue + " BETWEEN @array0 AND @array0");
                    }
                    break;
                default:
                    whereScript.Append(ObjectValue + " " + OperatorValue + " @SearchValue");
                    break;

            }
            return whereScript.ToString();
        }

        /// <summary>
        /// Where条件中涉及到的参数（处理SQL注入漏洞）
        /// </summary>
        /// <param name="ObjectValue">字段名</param>
        /// <param name="OperatorValue">运算符</param>
        /// <param name="SearchValue">值</param>
        internal void SQLWhereParam(SqlCommand scomm, string ObjectValue, string OperatorValue, string SearchValue)
        {
            string[] array = SearchValue.Split(new string[] { " ", ",", "，", ";" }, StringSplitOptions.RemoveEmptyEntries);

            switch (OperatorValue)
            {
                case "Like":
                    scomm.Parameters.AddWithValue("@SearchValue", "%" + SearchValue + "%");
                    break;
                case "LeftLike":
                    scomm.Parameters.AddWithValue("@SearchValue", SearchValue + "%");
                    break;
                case "RightLike":
                    scomm.Parameters.AddWithValue("@SearchValue", "%" + SearchValue);
                    break;
                case "NotLike":
                    scomm.Parameters.AddWithValue("@SearchValue", "%" + SearchValue + "%");
                    break;
                case "In":
                    for (int CurrentItem = 0; CurrentItem < array.Length; CurrentItem++)
                    {
                        scomm.Parameters.AddWithValue("@array" + CurrentItem.ToString(), array[CurrentItem]);
                    }
                    break;
                case "NotIn":
                    for (int CurrentItem = 0; CurrentItem < array.Length; CurrentItem++)
                    {
                        scomm.Parameters.AddWithValue("@array" + CurrentItem.ToString(), array[CurrentItem]);
                    }
                    break;
                case "Between":
                    array = SearchValue.Split(new string[] { "," }, StringSplitOptions.RemoveEmptyEntries);
                    if (array.Length > 1)
                    {
                        for (int CurrentItem = 0; CurrentItem < 2; CurrentItem++)
                        {
                            scomm.Parameters.AddWithValue("@array" + CurrentItem.ToString(), array[CurrentItem]);
                        }
                    }
                    else if (SearchValue == "")
                    {

                    }
                    else
                    {
                        scomm.Parameters.AddWithValue("@array0", array[0]);
                    }
                    break;
                default:
                    scomm.Parameters.AddWithValue("@SearchValue", SearchValue);
                    break;
            }
        }

        /// <summary>
        /// 判断单据编号是否重复
        /// </summary>
        /// <param name="Table">表名</param>
        /// <param name="BillNo">单据编号</param>
        /// <returns></returns>
        public bool IsRepeat(string Table, string BillNo)
        {
            DataTable dt = new DataTable();
            string Script = "SELECT BillNo FROM " + Table + " WHERE BillNo = '" + BillNo + "'";
            dt = Query(false, Script, Table);
            if (dt.Rows.Count > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }

        /// <summary>
        /// 根据单据编号获取资料(基础数据)
        /// </summary>
        /// <param name="Table"></param>
        /// <param name="Column"></param>
        /// <param name="BillNo"></param>
        /// <returns></returns>
        public string GetName(string Table, string Column, string BillNo)
        {
            DataTable dt = new DataTable();
            string SQLScript = "SELECT " + Column + " FROM " + Table + " WHERE BillNo = '" + BillNo + "'";
            dt = Query(false, SQLScript, Table);
            string name = "";
            if (dt.Rows.Count > 0)
            {
                name = dt.Rows[0][0].ToString();
            }
            return name;
        }

        /// <summary>
        /// 获取最大的单据编号（为自动编码做准备）
        /// </summary>
        /// <param name="Table"></param>
        /// <returns></returns>
        public string GetMaxBillNo(string Table,string where)
        {
            DataTable dt = new DataTable();
            string SQLScript = "SELECT MAX(BillNo) FROM " + Table + " " + where;
            dt = Query(false, SQLScript, Table);
            string billno = "";
            if (dt.Rows.Count > 0)
            {
                billno = dt.Rows[0][0].ToString();
            }
            return billno;
        }
    }
}
