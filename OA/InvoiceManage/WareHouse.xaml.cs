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

namespace OA.InvoiceManage
{
    /// <summary>
    /// Interaction logic for WareHouse.xaml
    /// </summary>
    public partial class WareHouse : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataSet ds = new DataSet();

        public WareHouse()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            ds = gbqb.Query("SELECT " +
                "RBillNo = ISNULL(A.BillNo,''), " +
                "CBillNo = ISNULL(B.BillNo,''), " +
                "Deseription = ISNULL(A.Deseription,''), " +
                "Dimensions = ISNULL(A.Dimensions,''), " +
                "Unit = ISNULL(A.Unit,''), " +
                "RQTY = ISNULL(A.QTY, 0), " +
                "CQTY = ISNULL(B.QTY, 0), " +
                "Inventory = ISNULL(A.QTY, 0) - ISNULL(B.QTY, 0), " +
                "Remark = ISNULL(A.Remark,'') " +
                "FROM [dbo].[StockInDetail] A " +
                "LEFT JOIN [dbo].[StockOutDetail] B ON A.BillNo=B.FromBillNo " +
                "UNION " +
                "SELECT " +
                "RBillNo = '', " +
                "CBillNo = ISNULL(A.BillNo,''), " +
                "Deseription = ISNULL(A.Deseription,''), " +
                "Dimensions = ISNULL(A.Dimensions,''), " +
                "Unit = ISNULL(A.Unit,''), " +
                "RQTY = 0, " +
                "CQTY = ISNULL(A.QTY,0), " +
                "Inventory = 0 - ISNULL(A.QTY,0), " +
                "Remark = ISNULL(A.Remark,'') " +
                "FROM [dbo].[StockOutDetail] A " +
                "WHERE ISNULL(A.FromBillNo,'') = ''");
            this.DataContext = ds.Tables[0];
            dagWareHouse.ItemsSource = ds.Tables[0].DefaultView;
        }
    }
}
