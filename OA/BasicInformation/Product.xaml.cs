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
    /// Interaction logic for Product.xaml
    /// </summary>
    public partial class Product : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[3];
        string guid = "";

        public Product()
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
                dt[0] = gbqb.Query("Product", guid, "Product");
                dt[1] = gbqb.Query("ProductChild", "MasterInnerID", guid, "ProductChild");
                dt[2] = gbqb.Query("PackagingSolutions", "MasterInnerID", guid, "PackagingSolutions");
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
            dagChildProduct.ItemsSource = dt[1].DefaultView;
            dagPackagingSolutions.ItemsSource = dt[2].DefaultView;
        }

        private void dagChildProduct_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dt[1].Rows.Count > 0 && tbaToolBar.State != "Delete")
            {
                DataRow dr;
                dr = dt[1].Rows[dt[1].Rows.Count - 1];
                dr["InnerID"] = Guid.NewGuid();
                dr["RowID"] = dt[1].Rows.Count;
                dr["MasterInnerID"] = guid;
                dr["MasterBillNo"] = txtBillNo.Text;
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
            }
        }

        private void dagPackagingSolutions_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dt[2].Rows.Count > 0 && tbaToolBar.State != "Delete")
            {
                DataRow dr;
                dr = dt[2].Rows[dt[2].Rows.Count - 1];
                dr["InnerID"] = Guid.NewGuid();
                dr["RowID"] = dt[2].Rows.Count;
                dr["MasterInnerID"] = guid;
                dr["MasterBillNo"] = txtBillNo.Text;
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
            }
        }
    }
}
