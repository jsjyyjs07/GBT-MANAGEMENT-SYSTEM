using Attribute;
using BusinessLogicLevel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using UIControl;

namespace OA.InvoiceManage
{
    /// <summary>
    /// Interaction logic for Color.xaml
    /// </summary>
    public partial class Color : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        Function f = new Function();
        DataTable[] dt = new DataTable[1];
        string guid = "";
        public Color()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;
            try
            {
                dt[0] = gbqb.Query("Colors", guid, "Colors");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            if (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New")
            {
                tbaToolBar.IsReadOnly = false;
                DataRow dr;
                dr = dt[0].NewRow();
                dr["InnerID"] = guid;
                dr["BillDate"] = System.DateTime.Now.ToString();
                dr["BillType"] = "TYPE0003";
                dr["BillNo"] = f.getBasicDataBillNo("Colors", 2);
                //int.Parse(Regex.Match(gbqb.GetMaxBillNo("Colors", ""), @"(\d+)\D+(\d+.)").Groups[1].Value) + 1;//正则获取字符串中的数字
                dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
                //dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dt[0].Rows.Add(dr);
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
        }
    }
}
