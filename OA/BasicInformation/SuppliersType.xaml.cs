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
using UIControl;
using Attribute;
using System.Data;
using BusinessLogicLevel;


namespace OA.BasicInformation
{
    /// <summary>
    /// Interaction logic for SuppliersType.xaml
    /// </summary>
    public partial class SuppliersType : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[1];
        string guid = "";

        public SuppliersType()
        {
            InitializeComponent();
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;
            try
            {
                dt[0] = gbqb.Query("SuppliersType", guid, "SuppliersType");
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
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dt[0].Rows.Add(dr);
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }
    }
}
