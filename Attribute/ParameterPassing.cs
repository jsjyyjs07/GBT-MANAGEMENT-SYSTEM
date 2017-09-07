using System.Data;

namespace Attribute
{
    public class ParameterPassing
    {
        //传递表名集合
        static string[] paramTable = null;
        //传递表名集合
        public static string[] ParamTable
        {
            get { return paramTable; }
            set
            {
                paramTable = new string[value.Length];
                paramTable = value;
            }
        }

        //传递查询参数
        static string[] paramWhere = null;
        //传递查询参数
        public static string[] ParamWhere
        {
            get { return paramWhere; }
            set
            {
                paramWhere = new string[value.Length];
                paramWhere = value;
            }
        }

        //传递表集合
        static DataTable[] dateTable = null;
        //传递表集合
        public static DataTable[] UserDataTable
        {
            get { return dateTable; }
            set
            {
                dateTable = new DataTable[value.Length];
                dateTable = value;
            }
        }

        //传递表集合
        static DataTable[] reportTable = null;
        //传递表集合
        public static DataTable[] ReportTable
        {
            get { return reportTable; }
            set
            {
                reportTable = new DataTable[value.Length];
                reportTable = value;
            }
        }

        //单据编号
        static string billno = "";
        //单据编号
        public static string BillNo
        {
            get { return billno; }
            set { billno = value; }
        }
    }
}
