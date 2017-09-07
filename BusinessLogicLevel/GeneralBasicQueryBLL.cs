using GeneralDataOperation;
using System.Data;

namespace BusinessLogicLevel
{
    public class GeneralBasicQueryBLL
    {
        #region BasicQuery
        BasicQuery bq = new BasicQuery();
        public string GetName(string userName)
        {
            try
            {
                return bq.getName(userName);
            }
            catch
            {
                throw;
            }

        }

        /// <summary>
        /// 获取表字段信息 表名排列顺序为：主表，明细表
        /// </summary>
        /// <param name="IsHeader">是否只显示主表字段</param>
        /// <param name="TableNames">表集合</param>
        /// <returns></returns>
        public DataTable GetColumnsInformation(bool IsHeader, params string[] tableName)
        {
            try
            {
                return bq.GetColumnsInformation(IsHeader, tableName);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 运算符 
        /// </summary>
        /// <returns></returns>
        public DataTable Operator()
        {
            try
            {
                return bq.Operator();
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 字段名
        /// </summary>
        /// <param name="table"></param>
        /// <returns></returns>
        public DataTable FieldName(string table)
        {
            try
            {
                return bq.FieldName(table);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 判断单据编号是否重复
        /// </summary>
        /// <param name="Table"></param>
        /// <param name="BillNo"></param>
        /// <returns></returns>
        public bool IsRePeat(string Table, string BillNo)
        {
            try
            {
                return bq.IsRepeat(Table, BillNo);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 根据单据编号获取资料
        /// </summary>
        /// <param name="Table">表</param>
        /// <param name="column">字段名(不是条件)</param>
        /// <param name="billno">单据编号（主键）</param>
        /// <returns></returns>
        public string GetName(string Table, string column, string billno)
        {
            try
            {
                return bq.GetName(Table, column, billno);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 获取最大的单据编号（为自动编码做准备）
        /// </summary>
        /// <param name="table">表名</param>
        /// <returns></returns>
        public string getMaxBillNo(string table, string where)
        {
            try
            {
                return bq.GetMaxBillNo(table, where);
            }
            catch
            {
                throw;
            }
        }
        #endregion

        #region UpdateTable
        UpdateTable ut = new UpdateTable();

        /// <summary>
        /// 同步更新，此方法只用于特定同步更新语法且只在框架内部使用
        /// </summary>
        /// <param name="updateScript"></param>
        public void UpdateSync(string updateScript)
        {
            try
            {
                ut.UpdateSync(updateScript);
            }
            catch
            {
                throw;
            }
        }

        public void ReturnOtyOrAmount(DataTable dt,string dtName,params string[] columnsName)
        {
            try
            {
                
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 添加、更新、删除数据库中的内容（单表）
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="TransactionTable">更改后的表集合（表结构须和数据库的表结构相同）</param>
        public void UpdateTable(string tableName, DataTable TransactionTable)
        {
            try
            {
                ut.Update(tableName, TransactionTable);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 向数据库的表中添加数据（参数化SQL语法，单表操作）
        /// </summary>
        /// <param name="strSQL">SQL查询语句</param>
        /// <param name="tableName">表名</param>
        /// <param name="ColumnsValue">字段值（匹配SQL查询语句的字段顺序，为*（所有字段）时，则匹配数据库表字段顺序）</param>
        /// <returns></returns>
        public void insertIntoDataTheTable(string strSQL, string tableName, params string[] columnsValue)
        {
            try
            {
                ut.InsertIntoDataTheTable(strSQL, tableName, columnsValue);
            }
            catch
            {
                throw;
            }
        }
        #endregion

        #region AdvancedQuery
        AdvancedQuery aq = new AdvancedQuery();
        /// <summary>
        /// 查询表
        /// </summary>
        /// <param name="dataTable">表名</param>
        /// <param name="where">条件</param>
        /// <returns></returns>
        public DataTable Query(string dataTable, string where,string srcTable)
        {
            try
            {
                return bq.Query(dataTable, where, srcTable);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 查询表
        /// </summary>
        /// <param name="dataTable">表名</param>
        /// <param name="ColumnName">字段名</param>
        /// <param name="ColumnValue">条件</param>
        /// <returns></returns>
        public DataTable Query(string dataTable, string ColumnName, string ColumnValue ,string srcTable)
        {
            try
            {
                return bq.Query(dataTable, ColumnName, ColumnValue, srcTable);
            }
            catch
            {
                throw;
            }
        }

        public DataTable Query(bool IsAlias, string strSQL, string tableName)
        {
            try
            {
                return bq.Query(IsAlias, strSQL, tableName);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 报表
        /// </summary>
        /// <param name="strSQL">SQL语法</param>
        /// <returns></returns>
        public DataSet Query(string strSQL, string srcTable = "Query")
        {
            try
            {
                return bq.Query(strSQL, srcTable);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 查询表(主要用于下拉框数据初始化）
        /// </summary>
        /// <param name="tableName">表名</param>
        /// <param name="srcTable"></param>
        /// <param name="fieldName">字段列表</param>
        /// <returns></returns>
        public DataTable QueryBasic(string tableName, string srcTable, params string[] fieldName)
        {
            try
            {
                return bq.QueryBasic(tableName, srcTable, fieldName);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 基础数据查询 表名排列顺序为：主表，明细表，主表中存在InnerID、BillNo两个字段并且为主键，
        /// 明细表中存在 主表表名+InnerID、主表表名+BillNo两个字段并且为主表的外键
        /// </summary>
        /// <param name="IsAlias">是否别名显示</param>
        /// <param name="ObjectValue">字段名</param>
        /// <param name="OperatorValue">运算符</param>
        /// <param name="SearchValue">值</param>
        /// <param name="table">表</param>
        /// <returns></returns>
        public DataTable ADataBasicQuery(bool IsAlias, string ObjectValue, string OperatorValue, string SearchValue, params string[] Table)
        {
            try
            {
                return bq.DataBasicQuery(IsAlias, ObjectValue, OperatorValue, SearchValue, Table);
            }
            catch
            {
                throw;
            }
        }
        #endregion
    }
}
