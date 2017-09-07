using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Attribute;
using WpfCustomControlLibrary;

namespace DatabaseConnection
{
    public class ConnectionString
    {
        /// <summary>
        /// 连接SQL数据库
        /// </summary>
        /// <param name="services">数据库服务器</param>
        /// <param name="sqluser">用户名</param>
        /// <param name="sqlpwd">密码</param>
        /// <returns></returns>
        public static string connection(string services, string sqluser, string sqlpwd)
        {
            return "Data Source=" + services + ";User ID=" + sqluser + ";Password=" + sqlpwd + "";
        }

        /// <summary>
        /// SQL连接字符串
        /// </summary>
        /// <param name="services">数据库服务器</param>
        /// <param name="sqluser">用户名</param>
        /// <param name="sqlpwd">密码</param>
        /// <param name="databases">数据库名</param>
        /// <returns></returns>
        public static string connection(string services, string sqluser, string sqlpwd, string databases)
        {
            return "Data Source=" + services + ";Initial Catalog=" + databases + ";User ID=" + sqluser + ";Password=" + sqlpwd + "";
        }

        static EncryptionAlgorithm eahm = new EncryptionAlgorithm();
        //数据库连接字符串
        public static string sqlconnection
        {
            get
            {
                return ConnectionString.connection(DataEditAttribute.DataServices, DataEditAttribute.SQLUser, eahm.Decrypt(DataEditAttribute.SQLPassword), DataEditAttribute.Databases);
            }
        }
    }
}
