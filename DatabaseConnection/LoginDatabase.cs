using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DatabaseConnection
{
    public class LoginDatabase
    {
        /// <summary>
        /// 读取登录界面语言资料
        /// </summary>
        /// <param name="Modules">模型</param>
        /// <param name="ControlName">控件名称</param>
        /// <param name="Language">语言</param>
        /// <returns></returns>
        public string LoginInterfaceLanguage(string Modules, string ControlName, string Language)
        {
            SqlConnection con = new SqlConnection(ConnectionString.sqlconnection);
            SqlCommand comm = new SqlCommand("select LanguageValue from Languages where Modules = @Modules" +
                " and ControlName = @ControlName and Language = @Language", con);
            comm.Parameters.AddWithValue("@Modules", Modules);
            comm.Parameters.AddWithValue("@ControlName", ControlName);
            comm.Parameters.AddWithValue("@Language", Language);
            con.Open();
            SqlDataReader sr = comm.ExecuteReader();
            string languagevalue = "";
            while (sr.Read())
            {
                languagevalue = sr[0].ToString();
            }
            sr.Close();
            con.Close();
            return languagevalue;
        }

        /// <summary>
        /// 用户登录验证
        /// </summary>
        /// <param name="UserName">用户名</param>
        /// <param name="UserPassword">密码</param>
        /// <returns></returns>
        public bool UserLoginValidation(string UserName, string UserPassword)
        {
            SqlConnection conn = new SqlConnection(ConnectionString.sqlconnection);
            SqlCommand comm = new SqlCommand("select * from Users where UserName = @UserName and Password = @UserPassword", conn);
            comm.Parameters.AddWithValue("@UserName", UserName);
            comm.Parameters.AddWithValue("@UserPassword", UserPassword);
            SqlDataAdapter sda = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            conn.Open();
            sda.Fill(ds, "Users");
            conn.Close();
            DataTable dt = new DataTable();
            dt = ds.Tables["Users"];
            int i = dt.Rows.Count;
            if (i == 0)
            {
                return false;
            }
            else
            {
                return true;
            }
        }
    }
}
