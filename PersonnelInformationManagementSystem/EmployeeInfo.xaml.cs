using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfCustomControlLibrary;
using UIControl;
using System.Data;
using BusinessLogicLevel;
using Attribute;

namespace PersonnelInformationManagementSystem
{
    /// <summary>
    /// Interaction logic for EmployeeInfo.xaml
    /// </summary>
    public partial class EmployeeInfo : Window
    {
        ResourcesOpt ropt = new ResourcesOpt();
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = { new DataTable() };
        string guid = "";
        public EmployeeInfo()
        {
            InitializeComponent();
            //加载图片
            imgPhoto.Source = ropt.GetResources(PersonnelInformationManagementSystem.Properties.Resources.Face, System.Drawing.Imaging.ImageFormat.Png);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            tbrToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbrToolBar.AddString = guid;
            try
            {
                dt[0] = gbqb.Query("EmployeeInformation", guid, "EmployeeInformation");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            if (tbrToolBar.State == "Add" || this.Title.Split('-')[2] == "New")
            {
                DataRow dr;
                dr = dt[0].NewRow();
                dr["InnerID"] = guid;
                dr["BillDate"] = System.DateTime.Now.ToString();
                dr["BillType"] = "TYPE0003";
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dt[0].Rows.Add(dr);
            }

            this.DataContext = dt[0];
            tbrToolBar.TableQuery = dt;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }
    }
}
