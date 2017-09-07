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

namespace OA.StockManagement
{
    /// <summary>
    /// Interaction logic for StockIn.xaml
    /// </summary>
    public partial class StockIn : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[2];

        string guid = "";

        public StockIn()
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
                dt[0] = gbqb.Query("StockIn", guid, "StockIn");
                dt[1] = gbqb.Query("StockInDetail", "FromInnerID", guid, "StockInDetail");
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
                dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                dr["BillType"] = "TYPE0003";
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dt[0].Rows.Add(dr);
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;

            dagStockInDetail.ItemsSource = dt[1].DefaultView;
            cobProduct.ItemsSource = TemporarilyTable.Product;
            cobUnit.ItemsSource = TemporarilyTable.Unit;
        }

        private void dagStockInDetail_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dt[1].Rows.Count > 0 && tbaToolBar.State != "Delete")
            {
                DataRow dr;
                dr = dt[1].Rows[dt[1].Rows.Count - 1];
                dr["InnerID"] = Guid.NewGuid();
                dr["RowID"] = dt[1].Rows.Count;
                dr["BillNo"] = txtBillNo.Text + "-" + dt[1].Rows.Count.ToString();
                dr["Total"] = decimal.Parse(dr["QTY"].ToString()) * decimal.Parse(dr["CTNS"].ToString());
                dr["FromInnerID"] = guid;
                dr["FromBillNo"] = txtBillNo.Text;
                dr["Creater"] = LoginAttribute.UserID;
                dr["CreateDate"] = System.DateTime.Now.ToString();
            }
        }
    }
}
