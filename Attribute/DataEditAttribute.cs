
namespace Attribute
{
    public class DataEditAttribute
    {
        #region control
        private static string editValue;
        private static string neweditValue;
        private static int dgcount;
        private static bool add = false;
        private static bool modify = false;
        #endregion

        #region Editing
        private static string def;
        private static string id;
        private static string dataservices;
        private static string sqlUser;
        private static string sqlPassword;
        private static string databases; 
        #endregion

        #region Edit Postprocessing
        private static string newdef;
        private static string newid;
        private static string newdataservices;
        private static string newsqlUser;
        private static string newsqlPassword;
        private static string newdatabases;  
        #endregion

        #region control Attribute
        public static string EditValue
        {
            get { return editValue; }
            set { editValue = value; }
        }

        public static string NewEditValue
        {
            get { return neweditValue; }
            set { neweditValue = value; }
        }

        public static int dgCount
        {
            get { return dgcount; }
            set { dgcount = value; }
        }

        public static bool Add
        {
            get { return add; }
            set { add = value; }
        }

        public static bool Modify
        {
            get { return modify; }
            set { modify = value; }
        } 
        #endregion

        #region Editing Attribute
        public static string Def
        {
            get { return def; }
            set { def = value; }
        }

        public static string ID
        {
            get { return id; }
            set { id = value; }
        }

        public static string DataServices
        {
            get { return dataservices; }
            set { dataservices = value; }
        }

        public static string SQLUser
        {
            get { return sqlUser; }
            set { sqlUser = value; }
        }

        public static string SQLPassword
        {
            get { return sqlPassword; }
            set { sqlPassword = value; }
        }

        public static string Databases
        {
            get { return databases; }
            set { databases = value; }
        } 
        #endregion

        #region Edit Postprocessing Attribute
        public static string NewDef
        {
            get { return newdef; }
            set { newdef = value; }
        }

        public static string NewID
        {
            get { return newid; }
            set { newid = value; }
        }

        public static string NewDataServices
        {
            get { return newdataservices; }
            set { newdataservices = value; }
        }

        public static string NewSQLUser
        {
            get { return newsqlUser; }
            set { newsqlUser = value; }
        }

        public static string NewSQLPassword
        {
            get { return newsqlPassword; }
            set { newsqlPassword = value; }
        }

        public static string NewDatabases
        {
            get { return newdatabases; }
            set { newdatabases = value; }
        }  
        #endregion
    }
}
