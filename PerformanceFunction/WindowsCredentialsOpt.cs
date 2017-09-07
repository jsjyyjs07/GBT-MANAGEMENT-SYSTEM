using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using WindowsAPI;

namespace WpfCustomControlLibrary
{
    public class WindowsCredentialsOpt
    {
        /// <summary>
        /// 添加域用户凭据
        /// </summary>
        /// <param name="key"></param>
        /// <param name="username"></param>
        /// <param name="secret"></param>
        /// <param name="Message"></param>
        /// <returns></returns>
        public int WriteCredential(string key, string username, string secret, out string Message)
        {
            return WindowsCredentials.AddCred(key, username, secret, out Message);
        }

        /// <summary>
        /// 删除域用户凭据
        /// </summary>
        /// <param name="target"></param>
        /// <param name="flags"></param>
        /// <returns></returns>
        public bool DeleteCredential(string target, int flags)
        {
            return WindowsCredentials.DeleteCred(target, flags);
        }
    }
}
