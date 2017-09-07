using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;
using System.Threading.Tasks;

namespace WindowsAPI
{
    public class FileIO
    {
        /// <summary>
        /// INI文件写入
        /// </summary>
        /// <param name="section">INI文件中的段落</param>
        /// <param name="key">INI文件中的关键字</param>
        /// <param name="val">INI文件中关键字的值</param>
        /// <param name="filePath">INI文件的完整的路径和名称</param>
        /// <returns></returns>
        [DllImport("kernel32")]
        private static extern long WritePrivateProfileString(string section, string key, string val, string filePath);
        
        /// <summary>
        /// INI文件写入
        /// </summary>
        /// <param name="section">INI文件中的段落</param>
        /// <param name="key">INI文件中的关键字</param>
        /// <param name="val">INI文件中关键字的值</param>
        /// <param name="filePath">INI文件的完整的路径和名称</param>
        /// <returns></returns>
        public static long WriteINI(string section,string key,string val,string filePath)
        {
            return WritePrivateProfileString(section,key,val,filePath);
        }
        
        /// <summary>
        /// INI文件读取
        /// </summary>
        /// <param name="section">INI文件中的段落名称</param>
        /// <param name="key">INI文件中的关键字</param>
        /// <param name="def">无法读取时的缺省值</param>
        /// <param name="retVal">读取值</param>
        /// <param name="size">值的大小</param>
        /// <param name="filePath">INI文件的完整路径和名称</param>
        /// <returns></returns>
        [DllImport("kernel32")]
        private static extern int GetPrivateProfileString(string section, string key, string def, StringBuilder retVal, int size, string filePath);

        /// <summary>
        /// INI文件读取
        /// </summary>
        /// <param name="section">INI文件中的段落名称</param>
        /// <param name="key">INI文件中的关键字</param>
        /// <param name="def">无法读取时的缺省值</param>
        /// <param name="retVal">读取值</param>
        /// <param name="size">值的大小</param>
        /// <param name="filePath">INI文件的完整路径和名称</param>
        /// <returns></returns>
        public static int GetINI(string section, string key, string def, StringBuilder retVal, int size, string filePath)
        {
            return GetPrivateProfileString(section, key, def, retVal, size, filePath);
        }
    }
}
