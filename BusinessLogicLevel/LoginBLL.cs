using System;
using DatabaseConnection;
using DataBaseInterface;
using GeneralDataOperation;
using Attribute;

namespace BusinessLogicLevel
{
    public class LoginBLL : Database
    {
        LoginDatabase ldb = new LoginDatabase();
        UpdateTable ut = new UpdateTable();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        Function f = new Function();
        /// <summary>
        /// 读取登录界面语言资料
        /// </summary>
        /// <param name="Modules">模型</param>
        /// <param name="ControlName">控件名称</param>
        /// <param name="Language">语言</param>
        /// <returns></returns>
        public string loginInterfaceLanguage(string Modules, string ControlName, string Language)
        {
            try
            {
                return ldb.LoginInterfaceLanguage(Modules, ControlName, Language);
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 用户登录验证
        /// </summary>
        /// <param name="UserName">用户名</param>
        /// <param name="UserPassword">密码</param>
        /// <returns></returns>
        public bool userLoginValidation(string UserName, string UserPassword)
        {
            //用户登录成功时写入登陆日志
            bool Validation = ldb.UserLoginValidation(UserName, UserPassword);
            if (Validation)
            {
                LoginAttribute.UserName = gbqb.GetName(LoginAttribute.UserID);
                ut.InsertIntoDataTheTable("select * from GBTLoginLog", "GBTLoginLog", Guid.NewGuid().ToString(),
                    f.getBillNo("GBTLoginLog", "GBTLL", "", "", 12), "Login Log", System.DateTime.Now,
                    "GBT", LoginAttribute.UserID, LoginAttribute.UserName, IpAddress.IpInfo, 
                    IpAddress.LocationIP, IpAddress.Location, LoginAttribute.UserName, System.DateTime.Now);
            }
            return Validation;
        }
    }
}
