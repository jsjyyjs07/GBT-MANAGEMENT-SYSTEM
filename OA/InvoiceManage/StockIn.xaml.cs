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

namespace OA.InvoiceManage
{
    /// <summary>
    /// Interaction logic for StockIn.xaml
    /// </summary>
    public partial class StockIn : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[2];
        DataTable[] dtTemp = new DataTable[2];
        string guid = "";
        string BillNo = "";

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
            tbaToolBar.CopyAssemblyName = "OA";
            tbaToolBar.CopyWinClassName = "OA.InvoiceManage.StockIn";

            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;
            string maxBillNo = "";
            try
            {
                dt[0] = gbqb.Query("StockIn", guid, "StockIn");
                dt[1] = gbqb.Query("StockInDetail", "MasterInnerID", guid, "StockInDetail");
                maxBillNo = gbqb.getMaxBillNo("StockIn", "WHERE [BillDate] = CONVERT(varchar(100), GETDATE(), 23)");
                if (OrderStart.CopyStart == "Copy")
                {
                    dtTemp[0] = gbqb.Query("StockIn", "BillNo", ParameterPassing.BillNo, "StockIn");
                    dtTemp[1] = gbqb.Query("StockInDetail", "MasterBillNo", ParameterPassing.BillNo, "StockInDetail");
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            if ((tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") && OrderStart.CopyStart != "Copy")
            {
                tbaToolBar.IsReadOnly = false;
                DataRow dr;
                dr = dt[0].NewRow();
                dr["InnerID"] = guid;
                dr["BillNo"] = maxBillNo == "" ? "RQ-" + System.DateTime.Now.Year +
                    "-" + System.DateTime.Now.Month + "-" + System.DateTime.Now.Day + "-1" :
                    "RQ-" + System.DateTime.Now.Year + "-" + System.DateTime.Now.Month + "-" +
                    System.DateTime.Now.Day + "-" + (int.Parse(maxBillNo.Split('-')[4]) + 1).ToString();
                dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                dr["BillType"] = "TYPE0003";
                dr["Creater"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dr["AuditorState"] = 0;
                dr["InvalidState"] = 0;
                dt[0].Rows.Add(dr);
            }

            if (OrderStart.CopyStart == "Copy")
            {
                BillNo = (maxBillNo == "" ? "RQ-" + System.DateTime.Now.Year +
                        "-" + System.DateTime.Now.Month + "-" + System.DateTime.Now.Day + "-1" :
                        "RQ-" + System.DateTime.Now.Year + "-" + System.DateTime.Now.Month + "-" +
                        System.DateTime.Now.Day + "-" + (int.Parse(maxBillNo.Split('-')[4]) + 1).ToString());
                tbaToolBar.IsReadOnly = false;
                foreach (DataRow drTemp in dtTemp[0].Rows)
                {
                    DataRow dr;
                    dr = dt[0].NewRow();
                    dr["InnerID"] = BasicControl.InnerID;
                    dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                    dr["BillNo"] = BillNo;
                    dr["BillType"] = drTemp["BillType"];
                    dr["DeliveryUnit"] = drTemp["DeliveryUnit"];
                    dr["Address"] = drTemp["Address"];
                    dr["Remark"] = drTemp["Remark"];
                    dr["Creater"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                    dr["CreateDate"] = System.DateTime.Now.ToString();
                    dr["Modifier"] = DBNull.Value;
                    dr["ModifiedDate"] = DBNull.Value;
                    dr["Auditor"] = DBNull.Value;
                    dr["AuditDate"] = DBNull.Value;
                    dr["Invalid"] = DBNull.Value;
                    dr["DateObsolete"] = DBNull.Value;
                    dr["AuditorState"] = DBNull.Value;
                    dr["InvalidState"] = DBNull.Value;
                    dt[0].Rows.Add(dr);
                }
                int index = 1;
                foreach (DataRow drTemp in dtTemp[1].Rows)
                {
                    DataRow dr;
                    dr = dt[1].NewRow();
                    dr["InnerID"] = Guid.NewGuid().ToString();
                    dr["RowID"] = drTemp["RowID"];
                    dr["BillNo"] = BillNo + "-" + index.ToString();
                    dr["Deseription"] = drTemp["Deseription"];
                    dr["Dimensions"] = drTemp["Dimensions"];
                    dr["QTY"] = drTemp["QTY"];
                    dr["Unit"] = drTemp["Unit"];
                    dr["Price"] = drTemp["Price"];
                    dr["Amount"] = drTemp["Amount"];
                    dr["Remark"] = drTemp["Remark"];
                    dr["MasterInnerID"] = BasicControl.InnerID;
                    dr["MasterBillNo"] = dt[0].Rows[0]["BillNo"].ToString();
                    dr["Creater"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                    dr["CreateDate"] = System.DateTime.Now.ToString();
                    dr["Modifier"] = DBNull.Value;
                    dr["ModifiedDate"] = DBNull.Value;
                    dr["Auditor"] = DBNull.Value;
                    dr["AuditDate"] = DBNull.Value;
                    dr["Invalid"] = DBNull.Value;
                    dr["DateObsolete"] = DBNull.Value;
                    dr["AuditorState"] = DBNull.Value;
                    dr["InvalidState"] = DBNull.Value;
                    dt[1].Rows.Add(dr);
                    index++;
                }
                OrderStart.CopyStart = "";
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
            //cobCustomer.TableQuery = dt;

            dagStockInDetail.ItemsSource = dt[1].DefaultView;
            try
            {
                ParameterPassing.BillNo = dt[0].Rows[0]["BillNo"].ToString();
            }
            catch { }
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (dt[1].Rows.Count >= 1 && dt[1].Rows.Count > dagStockInDetail.SelectedIndex &&
                (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") || tbaToolBar.State == "Modify")
            {
                dt[1].Rows[dagStockInDetail.SelectedIndex].Delete();
                int index = 1;
                foreach (DataRow dr in dt[1].Rows)
                {
                    if (dr.RowState.ToString() != "Deleted")
                    {
                        dr["RowID"] = index;
                        index++;
                    }
                }
            }
            else
            {

            }
        }

        private void dagInvoiceDetail_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dt[1].Rows.Count >= 1 && tbaToolBar.State != "Delete" &&
                (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") || tbaToolBar.State == "Modify" || tbaToolBar.State == "Copy")
            {
                try
                {
                    DataRow dr;
                    dr = dt[1].Rows[dt[1].Rows.Count - 1];
                    if (dr["InnerID"].ToString() == "")
                    {
                        dr["InnerID"] = Guid.NewGuid();
                    }
                    int index = 1;
                    foreach (DataRow dr1 in dt[1].Rows)
                    {
                        if (dr1.RowState.ToString() != "Deleted")
                        {
                            dr1["RowID"] = index;
                            index++;
                        }
                    }
                    dr["BillNo"] = txtBillNo.Text + "-" + dt[1].Rows.Count.ToString();
                    dr["MasterInnerID"] = guid;
                    dr["MasterBillNo"] = txtBillNo.Text;
                    dr["Creater"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                    dr["CreateDate"] = System.DateTime.Now.ToString();
                    dr["Amount"] = decimal.Parse(dr["QTY"].ToString() == "" ? "0" : dr["QTY"].ToString()) *
                        decimal.Parse(dr["Price"].ToString() == "" ? "0" : dr["Price"].ToString());
                }
                catch (Exception ex)
                {
                    tbaToolBar.Message = "Error:" + ex.Message;
                }
            }
        }

        private void btnTurnStockIn_Click(object sender, RoutedEventArgs e)
        {
            BasicControl.AssemblyName = "OA";
            BasicControl.WinClassName = "OA.InvoiceManage.StockOut";
            BasicControl.InnerID = Guid.NewGuid().ToString();
            ParameterPassing.UserDataTable = dt;
            bc.CreateForm("New", "出库单");
        }
    }
}
