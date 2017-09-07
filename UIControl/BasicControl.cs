using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Attribute;
using System.Reflection;
using System.Windows;
using WindowsAPI;
using System.Windows.Controls;

namespace UIControl
{
    public class BasicControl
    {
        private static string assemblyName = "";
        private static string winClassName = "";
        private static string innerID = "";

        /// <summary>
        /// 程序集名称
        /// </summary>
        public static string AssemblyName
        {
            get { return assemblyName; }
            set { assemblyName = value; }
        }

        /// <summary>
        /// 程序集名称.窗体类名
        /// </summary>
        public static string WinClassName
        {
            get { return winClassName; }
            set { winClassName = value; }
        }

        /// <summary>
        /// 关联ID（资料唯一标识符）
        /// </summary>
        public static string InnerID
        {
            get { return innerID; }
            set { innerID = value; }
        }

        public string StrTable()
        {
            StringBuilder strB = new StringBuilder();
            string[] paramsTable = ParameterPassing.ParamTable;
            for (int i = 0; i < paramsTable.Length; i++)
            {
                if (i == paramsTable.Length - 1)
                    strB.Append(paramsTable[i]);
                else
                    strB.Append(paramsTable[i] + ",");
            }
            return strB.ToString();
        }

        /// <summary>  
        /// 动态创建窗体（动态实例化窗体）
        /// </summary>  
        /// <param name="Title">窗体Name(每个功能的单据编号，确保唯一性)</param>
        /// <param name="FunctionName">功能名称</param>
        public void CreateForm(string Title, string FunctionName)
        {
            string path = assemblyName;//项目的Assembly选项名称  
            string name = winClassName; //类的名字  
            string title = FunctionName + (FunctionName != "" ? "--" : "") + Title;

            DataTable dtOpenWin = new DataTable();
            dtOpenWin = TemporarilyTable.OpenWindows;
            if (dtOpenWin.Rows.Count > 0)
            {
                if (dtOpenWin.Select("WindowsName = '" + title + "'").Length > 0)
                {
                    ActionWindow(FunctionName + (FunctionName != "" ? "--" : "") + Title);
                }
                else
                {
                    try
                    {
                        Window doc = (Window)Assembly.Load(path).CreateInstance(name);
                        doc.Title = title;
                        doc.Name = "A" + Title.Replace("-", "").Replace("/", "");
                        dtOpenWin.Rows.Add(innerID, TemporarilyTable.WindowsCount++, path, name, doc.Title, StrTable());
                        TemporarilyTable.OpenWindows = dtOpenWin;
                        doc.Show();
                    }
                    catch { }
                }
            }
            else
            {
                try
                {
                    Window doc = (Window)Assembly.Load(path).CreateInstance(name);
                    doc.Title = FunctionName + (FunctionName != "" ? "--" : "") + Title;
                    doc.Name = Title;
                    dtOpenWin.Rows.Add(innerID, TemporarilyTable.WindowsCount++, path, name, doc.Title, StrTable());
                    TemporarilyTable.OpenWindows = dtOpenWin;
                    doc.Show();
                }
                catch { }
            }
        }

        /// <summary>
        /// 关闭窗体 时移除窗体打开状态
        /// </summary>
        /// <param name="WindowsName">窗体名称</param>
        public void RemoveWindow(string WindowsName)
        {
            TemporarilyTable.OpenWindows.Rows.Remove(TemporarilyTable.OpenWindows.Select("WindowsName = '" + WindowsName + "'")[0]);
        }

        /// <summary>
        /// 激活窗体
        /// </summary>
        /// <param name="WindowsTitle"></param>
        public void ActionWindow(string WindowsTitle)
        {
            WindowsHwnd.ActionWindow(WindowsTitle);
        }

        /// <summary>
        /// 关闭窗体
        /// </summary>
        /// <param name="WindowsTitle"></param>
        public void CloseWindow(string WindowsTitle)
        {
            WindowsHwnd.CloseWindow(WindowsTitle);
        }

        /// <summary>
        /// ComboBox数据初始化
        /// </summary>
        /// <param name="cbx">ComboBox空间名称</param>
        /// <param name="dt">数据表包含ID,NAME</param>
        public void ComboBoxBinding(ComboBox cbx, DataTable dt)
        {
            dt.Columns.Add("IdName");
            foreach (DataRow dr in dt.Rows)
            {
                dr["IdName"] = dr[dt.Columns[0].ColumnName].ToString() + "," + dr[dt.Columns[1].ColumnName].ToString();
            }
            cbx.ItemsSource = dt.DefaultView;
            cbx.SelectedValuePath = dt.Columns[0].ColumnName;
            cbx.DisplayMemberPath = "IdName";
        }

        /// <summary>
        /// DataGridComboBoxColumn数据初始化
        /// </summary>
        /// <param name="cbx">DataGridComboBoxColumn控件名称</param>
        /// <param name="dt">数据表包含ID,NAME</param>
        public void ComboBoxBinding(DataGridComboBoxColumn cbx, DataTable dt)
        {
            dt.Columns.Add("IdName");
            foreach (DataRow dr in dt.Rows)
            {
                dr["IdName"] = dr[dt.Columns[0].ColumnName].ToString() + "," + dr[dt.Columns[1].ColumnName].ToString();
            }
            cbx.ItemsSource = dt.DefaultView;
            cbx.SelectedValuePath = dt.Columns[0].ColumnName;
            cbx.DisplayMemberPath = "IdName";
        }
    }
}
