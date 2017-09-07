using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace WpfCustomControlLibrary
{
    public class EncryptionAlgorithm
    {
        /// <summary>
        /// 加密函数
        /// </summary>
        /// <param name="strText">待加密的字符串</param>
        /// <param name="strEncrKey">密钥(最大长度8)</param>
        /// <returns></returns>
        private String Encrypt(String strText, String strEncrKey)
        {
            Byte[] byKey = { };
            Byte[] IV = { 0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF };
            try
            {
                byKey = System.Text.Encoding.UTF8.GetBytes(strEncrKey.Substring(0, 8));
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                Byte[] inputByteArray = Encoding.UTF8.GetBytes(strText);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateEncryptor(byKey, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                return Convert.ToBase64String(ms.ToArray());
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        /// <summary>
        /// 加密函数
        /// </summary>
        /// <param name="strText">待加密字符串</param>
        /// <returns></returns>
        public string Encrypt(string strText)
        {
            return Encrypt(strText, "jsjyyjs7");
        }

        /// <summary>
        /// 解密函数
        /// </summary>
        /// <param name="strText">待解密的字符串</param>
        /// <param name="sDecrKey">密钥(最大长度8)</param>
        /// <returns></returns>
        private String Decrypt(String strText, String sDecrKey)
        {
            Byte[] byKey = { };
            Byte[] IV = { 0x12, 0x34, 0x56, 0x78, 0x90, 0xAB, 0xCD, 0xEF };
            Byte[] inputByteArray = new byte[strText.Length];
            try
            {
                byKey = System.Text.Encoding.UTF8.GetBytes(sDecrKey.Substring(0, 8));
                DESCryptoServiceProvider des = new DESCryptoServiceProvider();
                inputByteArray = Convert.FromBase64String(strText);
                MemoryStream ms = new MemoryStream();
                CryptoStream cs = new CryptoStream(ms, des.CreateDecryptor(byKey, IV), CryptoStreamMode.Write);
                cs.Write(inputByteArray, 0, inputByteArray.Length);
                cs.FlushFinalBlock();
                System.Text.Encoding encoding = System.Text.Encoding.UTF8;
                return encoding.GetString(ms.ToArray());
            }
            catch (Exception ex)
            {
                return ex.Message;
            }
        }

        /// <summary>
        /// 解密函数
        /// </summary>
        /// <param name="strText">待解密字符串</param>
        /// <returns></returns>
        public string Decrypt(string strText)
        {
            return Decrypt(strText, "jsjyyjs7");
        }
    }
}
