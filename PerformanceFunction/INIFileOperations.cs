using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using WindowsAPI;

namespace WpfCustomControlLibrary
{
    public class INIFileOperations
    {
        //INI文件路径
        private string inipath;

        /// <summary>
        /// 构造函数，实例化时指定INI文件名，如无此INI文件则在程序文件目录创建该文件
        /// </summary>
        /// <param name="ININame">INI文件名</param>
        public INIFileOperations(string ININame)
        {
            if (!File.Exists(AppDomain.CurrentDomain.SetupInformation.ApplicationBase + ININame))
                File.Create(AppDomain.CurrentDomain.SetupInformation.ApplicationBase + ININame);
            inipath = AppDomain.CurrentDomain.SetupInformation.ApplicationBase + ININame;
        }

        /// <summary>
        /// INI文件读取
        /// </summary>
        /// <param name="Section">INI文件中的段落名称</param>
        /// <param name="Key">INI文件中的关键字</param>
        /// <returns></returns>
        public string IniReadValue(string Section, string Key)
        {
            StringBuilder temp = new StringBuilder(500);
            int i = FileIO.GetINI(Section, Key, "", temp, 500, this.inipath);
            return temp.ToString();
        }

        /// <summary>
        /// INI文件写入
        /// </summary>
        /// <param name="Section">INI文件中的段落名称</param>
        /// <param name="Key">INI文件中的关键字</param>
        /// <param name="Value">INI文件中关键字的值</param>
        public void IniWriteValue(string Section, string Key,string Value)
        {
            FileIO.WriteINI(Section, Key, Value, this.inipath);
        }
    }
}
