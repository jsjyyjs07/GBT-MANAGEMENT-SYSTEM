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
    /// Interaction logic for Invoice.xaml
    /// </summary>
    public partial class Invoice : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        Function ftn = new Function();
        DataTable[] dt = new DataTable[2];
        DataTable[] dtTemp = new DataTable[2];
        DataRow dr = null;
        string guid = "";

        public Invoice()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //初始化打印预览窗体
            //tbaToolBar.AssemblyName = "OA";
            //tbaToolBar.WinClassName = "OA.InvoiceManage.InvoicePrintPreview";

            //初始化ComboBox
            bc.ComboBoxBinding(cbxCustomer, gbqb.QueryBasic("Customer", "Customer", "BillNo", "CustomerName"));
            bc.ComboBoxBinding(dcobCustomer, gbqb.QueryBasic("Customer", "Customer", "BillNo", "CustomerName"));
            bc.ComboBoxBinding(dcobColor, gbqb.QueryBasic("Colors", "Colors", "BillNo", "Color"));
            bc.ComboBoxBinding(dcobProcess, gbqb.QueryBasic("Process", "Process", "BillNo", "Process"));

            //初始化复制的Invoice窗体
            tbaToolBar.CopyAssemblyName = "OA";
            tbaToolBar.CopyWinClassName = "OA.InvoiceManage.Invoice";

            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;
            try
            {
                dt[0] = gbqb.Query("Invoice", guid, "Invoice");
                dt[1] = gbqb.Query("InvoiceDetail", "MasterInnerID", guid, "InvoiceDetail");
                if (OrderStart.CopyStart == "Copy")
                {
                    dtTemp[0] = gbqb.Query("Invoice", "BillNo", ParameterPassing.BillNo, "Invoice");
                    dtTemp[1] = gbqb.Query("InvoiceDetail", "MasterBillNo", ParameterPassing.BillNo, "InvoiceDetail");
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
                dr["BillNo"] = ftn.getBillNo("Invoice", "ZB", "-", "-", 3);
                dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                dr["BillType"] = "TYPE0003";
                dr["PaymentTerms"] = "现金";
                dr["ElectroplatingWay"] = "挂镀";
                dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
                dr["CreateDate"] = System.DateTime.Now.ToString();
                dr["AuditorState"] = 0;
                dr["InvalidState"] = 0;
                dt[0].Rows.Add(dr);
            }

            if (OrderStart.CopyStart == "Copy")
            {
                tbaToolBar.IsReadOnly = false;
                foreach (DataRow drTemp in dtTemp[0].Rows)
                {
                    DataRow dr;
                    dr = dt[0].NewRow();
                    dr["InnerID"] = BasicControl.InnerID;
                    dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                    dr["BillNo"] = ftn.getBillNo("Invoice", "ZB", "-", "-", 3);
                    dr["Customer"] = drTemp["Customer"];
                    dr["BillType"] = drTemp["BillType"];
                    dr["PaymentTerms"] = drTemp["PaymentTerms"];
                    dr["ElectroplatingWay"] = drTemp["ElectroplatingWay"];
                    dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
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
                    dr["BillNo"] = ftn.getDetailBillNo(dt[0].Rows[0]["BillNo"].ToString(), "-", index, 3);
                    dr["CustomerID"] = drTemp["CustomerID"];
                    dr["Customer"] = drTemp["Customer"];
                    dr["PaymentTerms"] = drTemp["PaymentTerms"];
                    dr["ElectroplatingWay"] = drTemp["ElectroplatingWay"];
                    dr["ReceivingTime"] = drTemp["ReceivingTime"];
                    dr["Deseription"] = drTemp["Deseription"];
                    dr["ColorID"] = drTemp["ColorID"];
                    dr["Color"] = drTemp["Color"];
                    dr["ReceivingQTY"] = drTemp["ReceivingQTY"];
                    dr["MasterInnerID"] = BasicControl.InnerID;
                    dr["MasterBillNo"] = dt[0].Rows[0]["BillNo"].ToString();
                    dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
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

            dagInvoiceDetail.ItemsSource = dt[1].DefaultView;
            try
            {
                ParameterPassing.BillNo = dt[0].Rows[0]["BillNo"].ToString();
            }
            catch { }
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (dt[1].Rows.Count >= 1 && dt[1].Rows.Count > dagInvoiceDetail.SelectedIndex &&
                (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") || tbaToolBar.State == "Modify")
            {
                if (dt[1].Rows[dagInvoiceDetail.SelectedIndex]["State"].ToString() != "1")
                {
                    MessageBoxResult mbr = MessageBox.Show("请确认删除收货序号为：" + dt[1].Rows[dagInvoiceDetail.SelectedIndex]["BillNo"].ToString() + " 的记录?", "警告", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                    if (mbr == MessageBoxResult.Yes)
                    {
                        dt[1].Rows[dagInvoiceDetail.SelectedIndex].Delete();
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
                }
                else
                {
                    txtMessage.Text = "警告：该笔资料已做出货，不能删除。";
                }
            }
            else
            {

            }
        }

        private void btnTurnShipOrder_Click(object sender, RoutedEventArgs e)
        {
            OrderStart.TrunStart = "trun";
            BasicControl.AssemblyName = "OA";
            BasicControl.WinClassName = "OA.InvoiceManage.ShipOrder";
            BasicControl.InnerID = Guid.NewGuid().ToString();
            ParameterPassing.UserDataTable = dt;
            bc.CreateForm("New", "发货单");
        }

        private void dagInvoiceDetail_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            try
            {
                dr = ((DataRowView)this.dagInvoiceDetail.CurrentItem).Row;
                dr["QTY"] = decimal.Parse(dr["ShippingQTY"].ToString() == "" ? "0" : dr["ShippingQTY"].ToString()) *
                    decimal.Parse(dr["APerKilogram"].ToString() == "" ? "0" : dr["APerKilogram"].ToString());
                if (dr["ElectroplatingWay"].ToString() == "滚镀")
                {
                    dr["Amount"] = Math.Round(decimal.Parse(dr["ShippingQTY"].ToString() == "" ? "0" : dr["ShippingQTY"].ToString()) *
                        decimal.Parse(dr["Price"].ToString() == "" ? "0" : dr["Price"].ToString()), 2);
                }
                else
                {
                    dr["Amount"] = Math.Round(decimal.Parse(dr["QTY"].ToString() == "" ? "0" : dr["QTY"].ToString()) *
                        decimal.Parse(dr["Price"].ToString() == "" ? "0" : dr["Price"].ToString()), 2);
                }
                dr["Customer"] = gbqb.GetName("Customer", "CustomerName", cbxCustomer.SelectedValue.ToString().Trim());
                dr["Color"] = gbqb.GetName("Colors", "Color", dr["ColorID"].ToString());
                dr["Remark"] = gbqb.GetName("Process", "Process", dr["ProcessID"].ToString());
            }
            catch (Exception ex)
            {
                tbaToolBar.Message = "Error:" + ex.Message;
            }
        }

        private void dagInvoiceDetail_InitializingNewItem(object sender, InitializingNewItemEventArgs e)
        {
            //初始化新增行 代码只在首次初始化时执行
            dr = ((DataRowView)e.NewItem).Row;
            dr["InnerID"] = Guid.NewGuid();
            dr["RowID"] = dagInvoiceDetail.Items.Count - 1;
            dr["CustomerID"] = cbxCustomer.SelectedValue;
            dr["PaymentTerms"] = cbxPaymentTerms.Text;
            dr["ElectroplatingWay"] = cbxElectroplatingWay.Text;
            dr["BillNo"] = ftn.getDetailBillNo(dt[0].Rows[0]["BillNo"].ToString(), "-", dagInvoiceDetail.Items.Count - 1, 3);
            dr["ReceivingTime"] = System.DateTime.Now.ToShortDateString();
            dr["MasterInnerID"] = guid;
            dr["MasterBillNo"] = txtBillNo.Text;
            dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
            dr["CreateDate"] = System.DateTime.Now.ToString();
        }
    }
}
