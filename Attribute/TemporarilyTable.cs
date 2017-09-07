using System.Data;

namespace Attribute
{
    public class TemporarilyTable
    {
        //权限表
        private DataTable dtPrivilege = new DataTable();

        /// <summary>
        /// 临时权限表(先设置，初始化权限表)
        /// </summary>
        public DataTable TempTablePrivilege
        {
            get { return dtPrivilege; }
            set { dtPrivilege = value; }
        }

        //打开的窗体
        private static DataTable dtopenWindows = new DataTable();
        //计数
        private static int windowsCount = 0;
        /// <summary>
        /// 打开窗体临时表字段
        /// </summary>
        /// <returns></returns>
        private static DataTable dtOpenWindows()
        {
            if (dtopenWindows.Columns.Count == 0)
            {
                dtopenWindows.Columns.Add("InnerID");
                dtopenWindows.Columns.Add("RowID");
                dtopenWindows.Columns.Add("AssemblyName");
                dtopenWindows.Columns.Add("NameSpace");
                dtopenWindows.Columns.Add("WindowsName");
                dtopenWindows.Columns.Add("Table");
            }
            return dtopenWindows;
        }

        /// <summary>
        /// 打开的窗体 先获取窗体列表再设置
        /// </summary>
        public static DataTable OpenWindows
        {
            get
            {
                dtOpenWindows();
                return dtopenWindows;
            }
            set
            {
                if (dtopenWindows.Columns.Count > 0)
                    dtopenWindows = value;
            }
        }

        /// <summary>
        /// 打开的窗体计数
        /// </summary>
        public static int WindowsCount
        {
            get { return windowsCount; }
            set { windowsCount = value; }
        }

        private static DataView product = null;
        /// <summary>
        /// 产品表
        /// </summary>
        public static DataView Product
        {
            get { return product; }
            set { product = value; }
        }

        private static DataView unit = null;
        /// <summary>
        /// 单位表
        /// </summary>
        public static DataView Unit
        {
            get { return unit; }
            set { unit = value; }
        }
    }

}