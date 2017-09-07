using Attribute;
using BusinessLogicLevel;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using UIControl;

namespace OA.BasicInformation
{
    /// <summary>
    /// Interaction logic for Department.xaml
    /// </summary>
    public partial class Department : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[1];
        string guid = "";
        int InnerIndex = 0;

        public Department()
        {
            InitializeComponent();
        }

        private void winSupplierType_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void winSupplierType_Loaded(object sender, RoutedEventArgs e)
        {
            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;

            try
            {
                dt[0] = gbqb.Query("Department", guid, "Department");

                //需要考虑 双向绑定
                bc.ComboBoxBinding(cobCompany, gbqb.QueryBasic("Company", "Company", "BillNo", "CompanyName"));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
        }

        private void cobCompany_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New")
            {
                tbaToolBar.IsReadOnly = false;
                DataRow dr;
                dr = dt[0].NewRow();
                dr["InnerID"] = guid;
                dr["BillDate"] = System.DateTime.Now.ToString();
                dr["BillType"] = "TYPE0003";
                //dr["CompanyInnerID"] = cobCompany.Text.Split(',')[0].ToString().Trim();
                //dr["CompanyBillNo"] = cobCompany.Text.Split(',')[1].ToString().Trim();
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dt[0].Rows.Add(dr);
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
            //dt.Rows[0]["CompanyInnerID"] = company.Rows[cobCompany.SelectedIndex]["InnerID"].ToString();
            //dt.Rows[0]["CompanyBillNo"] = company.Rows[cobCompany.SelectedIndex]["BillNo"].ToString();
        }
    }
}
