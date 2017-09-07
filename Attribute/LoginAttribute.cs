
namespace Attribute
{
    public class LoginAttribute
    {
        private static string userID;

        public static string UserID
        {
            get { return userID; }
            set { userID = value; }
        }

        private static string userName;

        public static string UserName
        {
            get { return userName; }
            set { userName = value; }
        }

        private static string userPassword;

        public static string UserPassword
        {
            get { return userPassword; }
            set { userPassword = value; }
        }

        private static string module;

        public static string Module
        {
            get { return module; }
            set { module = value; }
        }
    }
}
