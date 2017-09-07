using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Controls;
using Attribute;
using WpfCustomControlLibrary;
using BusinessLogicLevel;
using System.Data;

namespace SystemInitialization
{
    public class LoginInit
    {
        INIFileOperations IniFOLO = new INIFileOperations("LoginOperation.ini");
        EncryptionAlgorithm eahm = new EncryptionAlgorithm();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        LoginBLL lbll = new LoginBLL();

        /// <summary>
        /// 用户登录验证
        /// </summary>
        /// <returns></returns>
        public bool UserLoginValidation()
        {
            try
            {
                return lbll.userLoginValidation(LoginAttribute.UserID, eahm.Encrypt(LoginAttribute.UserPassword));
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 产品表初始化
        /// </summary>
        /// <returns></returns>
        public DataView Product()
        {
            try
            {
                return gbqb.Query("Product", "InnerID", "", "Product").DefaultView;
            }
            catch
            {
                throw;
            }
        }

        /// <summary>
        /// 单位表初始化
        /// </summary>
        /// <returns></returns>
        public DataView Unit()
        {
            try
            {
                return gbqb.Query("Unit", "InnerID", "").DefaultView;
            }
            catch
            {
                throw;
            }
        }
    }
}
