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
    /// Interaction logic for ShipOrder.xaml
    /// </summary>
    public partial class ShipOrder : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        Function ftn = new Function();
        DataTable[] dt = new DataTable[2];
        DataTable[] dtSource = new DataTable[2];
        DataRow dr = null;
        string guid = "";
        //string maxBillNo = "";

        public ShipOrder()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
            OrderStart.TrunStart = "";
            ParameterPassing.UserDataTable = new DataTable[] { };
            try
            {
                if (dt[1].Rows.Count > 0)
                {
                    foreach (DataRow dr in dt[1].Rows)
                    {
                        gbqb.UpdateSync("update [dbo].[InvoiceDetail] set APerKilogram=isnull(A.APerKilogram,0)," +
                            "ShippingQTY=isnull(A.ShippingQTY,0),Price=isnull(A.Price,0),QTY=isnull(A.QTY,0),Amount=isnull(A.Amount,0), " +
                            "SampleQTY=isnull(A.SampleQTY,0),SampleWeight=isnull(A.SampleWeight,0) " +
                            "from (select C.FromBillNo,C.APerKilogram,SUM(C.ShippingQTY) as ShippingQTY," +
                            "C.Price,SUM(C.QTY) as QTY,SUM(C.Amount) as Amount,C.SampleQTY,C.SampleWeight from [dbo].[Invoice] A " +
                            "inner join [dbo].[InvoiceDetail] B on A.BillNo=B.MasterBillNo " +
                            "left join [dbo].[ShipOrderDetail] C on B.BillNo=C.FromBillNo " +
                            "where C.FromBillNo = '" + dr["FromBillNo"].ToString() + "' " +
                            "group by C.FromBillNo,C.AperKilogram,C.Price,C.SampleQTY,C.SampleWeight) A " +
                            "inner join [dbo].[InvoiceDetail] B on A.FromBillNo=B.BillNo");
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "错误消息");
            }

            if (OrderStart.CopyStart == "Copy")
            {
                OrderStart.CopyStart = "";
            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //初始化打印预览窗体
            tbaToolBar.AssemblyName = "OA";
            tbaToolBar.WinClassName = "OA.InvoiceManage.ShipPrintPreview";

            bc.ComboBoxBinding(cbxCustomer, gbqb.QueryBasic("Customer", "Customer", "BillNo", "CustomerName"));
            bc.ComboBoxBinding(dcobCustomer, gbqb.QueryBasic("Customer", "Customer", "BillNo", "CustomerName"));
            bc.ComboBoxBinding(dcobColor, gbqb.QueryBasic("Colors", "Colors", "BillNo", "Color"));
            bc.ComboBoxBinding(dcobProcess, gbqb.QueryBasic("Process", "Process", "BillNo", "Process"));

            //转单用
            tbaToolBar.FromTableName = new string[] { "Invoice", "InvoiceDetail" };

            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;
            tbaToolBar.State = OrderStart.TrunStart;
            //string BillNoIndex = "";

            //tbaToolBar.ReportPath = AppDomain.CurrentDomain.BaseDirectory + "OA.Invoice.rdlc";
            tbaToolBar.reportFileName = "Invoice.rdlc";

            try
            {
                dt[0] = gbqb.Query("ShipOrder", guid, "ShipOrder");
                dt[1] = gbqb.Query("ShipOrderDetail", "MasterInnerID", guid, "ShipOrderDetail");
                if (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New")
                {
                    tbaToolBar.IsReadOnly = false;
                    if (tbaToolBar.State == "trun")
                    {
                        dtSource[0] = ParameterPassing.UserDataTable[0];
                        dtSource[1] = ParameterPassing.UserDataTable[1];
                        //dt[2] = gbqb.Query("InvoiceDetail", "MasterInnerID", dtSource[0].Rows[0]["FromInnerID"].ToString());
                        int index = 0;
                        for (int CurrentTable = 0; CurrentTable < dtSource.Length; CurrentTable++)
                        {
                            index = 1;
                            foreach (DataRow drSource in dtSource[CurrentTable].Rows)
                            {
                                DataRow dr;
                                dr = dt[CurrentTable].NewRow();
                                if (CurrentTable == 0)
                                {
                                    dr["InnerID"] = BasicControl.InnerID;
                                    dr["BillNo"] = ftn.getBillNo("ShipOrder", "ZBD", "-", "-", 3);
                                    dr["Customer"] = drSource["Customer"];
                                    dr["BillType"] = drSource["BillType"];
                                    dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                                }
                                dr["PaymentTerms"] = drSource["PaymentTerms"];
                                dr["ElectroplatingWay"] = drSource["ElectroplatingWay"];
                                dr["State"] = drSource["State"];
                                dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
                                dr["CreateDate"] = System.DateTime.Now.ToString();
                                dr["Remark"] = drSource["Remark"];
                                dr["Modifier"] = DBNull.Value;
                                dr["ModifiedDate"] = DBNull.Value;
                                dr["Auditor"] = DBNull.Value;
                                dr["AuditDate"] = DBNull.Value;
                                dr["Invalid"] = DBNull.Value;
                                dr["DateObsolete"] = DBNull.Value;
                                dr["AuditorState"] = DBNull.Value;
                                dr["InvalidState"] = DBNull.Value;
                                dr["FromInnerID"] = drSource["InnerID"];
                                dr["FromBillNo"] = drSource["BillNo"];
                                if (CurrentTable == 1)
                                {
                                    dr["InnerID"] = Guid.NewGuid().ToString();
                                    dr["BillNo"] = ftn.getDetailBillNo(dt[0].Rows[0]["BillNo"].ToString(), "-", index, 3);
                                    dr["CustomerID"] = drSource["CustomerID"];
                                    dr["Customer"] = drSource["Customer"];
                                    dr["RowID"] = drSource["RowID"];
                                    dr["ReceivingTime"] = drSource["ReceivingTime"];
                                    dr["ShippingTime"] = System.DateTime.Now.ToShortDateString();
                                    dr["Deseription"] = drSource["Deseription"];
                                    dr["ColorID"] = drSource["ColorID"];
                                    dr["Color"] = drSource["Color"];
                                    dr["ReceivingQTY"] = drSource["ReceivingQTY"];
                                    dr["SurplusQTY"] = (double.Parse(drSource["ReceivingQTY"].ToString() == "" ? "0" : drSource["ReceivingQTY"].ToString()) - double.Parse(drSource["ShippingQTY"].ToString() == "" ? "0" : drSource["ShippingQTY"].ToString())).ToString();
                                    dr["OutShipping"] = drSource["ShippingQTY"];
                                    dr["SampleQTY"] = drSource["SampleQTY"];
                                    dr["SampleWeight"] = drSource["SampleWeight"];
                                    dr["APerKilogram"] = drSource["APerKilogram"];
                                    dr["Price"] = drSource["Price"];
                                    dr["ProcessID"] = drSource["ProcessID"];
                                    dr["MasterInnerID"] = dt[0].Rows[0]["InnerID"].ToString();
                                    dr["MasterBillNo"] = dt[0].Rows[0]["BillNo"].ToString();
                                }
                                dt[CurrentTable].Rows.Add(dr);
                                index++;
                            }
                        }
                        //OrderStart.TrunStart = "";
                    }
                    else
                    {
                        DataRow dr;
                        dr = dt[0].NewRow();
                        dr["InnerID"] = guid;
                        dr["BillNo"] = ftn.getBillNo("ShipOrder", "ZBD", "-", "-", 3);
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
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }
            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
            //cobCustomer.TableQuery = dt;

            dagShipOrderDetail.ItemsSource = dt[1].DefaultView;
            ParameterPassing.BillNo = dt[0].Rows.Count >= 1 ? dt[0].Rows[0]["BillNo"].ToString() : "";
        }

        private void dagShipOrderDetail_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            try
            {
                if (dt[1].Rows.Count >= 1 && tbaToolBar.State != "Delete")
                {
                    if (tbaToolBar.State == "trun" || tbaToolBar.State == "Modify")
                    {
                        int index = 1;
                        foreach (DataRow drDetail in dt[1].Rows)
                        {
                            if (drDetail.RowState.ToString() == "Added")
                            {
                                drDetail["InnerID"] = Guid.NewGuid();
                                drDetail["RowId"] = index.ToString();
                                drDetail["BillNo"] = ftn.getDetailBillNo(dt[0].Rows[0]["BillNo"].ToString(), "-", index, 3);
                                drDetail["CustomerID"] = cbxCustomer.SelectedValue;
                                drDetail["PaymentTerms"] = cbxPaymentTerms.Text;
                                drDetail["ElectroplatingWay"] = cbxElectroplatingWay.Text;
                                if (drDetail["ShippingTime"].ToString() == "")
                                {
                                    drDetail["ShippingTime"] = System.DateTime.Now.ToShortDateString();
                                }
                                drDetail["MasterInnerID"] = guid;
                                drDetail["MasterBillNo"] = txtBillNo.Text;
                                drDetail["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
                                drDetail["CreateDate"] = System.DateTime.Now.ToString();
                                if (drDetail["ReceivingTime"].ToString() == "")
                                {
                                    drDetail["ReceivingTime"] = System.DateTime.Now.ToShortDateString();
                                }
                                //允许用户手动输入 如需要触发计算公式则需要清空该栏位
                                if (drDetail["APerKilogram"].ToString() == "" || drDetail["APerKilogram"].ToString() == "0")
                                {
                                    //处理除数不能为零的bug
                                    if (drDetail["SampleWeight"].ToString() == "" || drDetail["SampleWeight"].ToString() == "0.00" || drDetail["SampleWeight"].ToString() == "0")
                                    {
                                        drDetail["APerKilogram"] = Math.Round((500 / 1) * decimal.Parse(drDetail["SampleQTY"].ToString() == "" ? "0" : drDetail["SampleQTY"].ToString()), 2);
                                    }
                                    else
                                    {
                                        drDetail["APerKilogram"] = Math.Round((500 / decimal.Parse(drDetail["SampleWeight"].ToString())) *
                                            decimal.Parse(drDetail["SampleQTY"].ToString() == "" ? "0" : drDetail["SampleQTY"].ToString()), 2);
                                    }
                                }
                                drDetail["QTY"] = Math.Round(decimal.Parse(drDetail["ShippingQTY"].ToString() == "" ? "0" : drDetail["ShippingQTY"].ToString()) *
                                    decimal.Parse(drDetail["APerKilogram"].ToString() == "" ? "0" : drDetail["APerKilogram"].ToString()), 1);
                                drDetail["SurplusQTY"] = (double.Parse(drDetail["ReceivingQTY"].ToString() == "" ? "0" : drDetail["ReceivingQTY"].ToString()) -
                                    double.Parse(drDetail["OutShipping"].ToString() == "" ? "0" : drDetail["OutShipping"].ToString()) -
                                    double.Parse(drDetail["ShippingQTY"].ToString() == "" ? "0" : drDetail["ShippingQTY"].ToString())).ToString();
                                //dr["OutShipping"] = (double.Parse(dr["ReceivingQTY"].ToString() == "" ? "0" : dr["ReceivingQTY"].ToString()) - double.Parse(dr["SurplusQTY"].ToString() == "" ? "0" : dr["SurplusQTY"].ToString())).ToString();
                                if (drDetail["ElectroplatingWay"].ToString() == "滚镀")
                                {
                                    drDetail["Amount"] = Math.Round(decimal.Parse(drDetail["ShippingQTY"].ToString() == "" ? "0" : drDetail["ShippingQTY"].ToString()) *
                                        decimal.Parse(drDetail["Price"].ToString() == "" ? "0" : drDetail["Price"].ToString()), 2);
                                }
                                else
                                {
                                    drDetail["Amount"] = Math.Round(decimal.Parse(drDetail["QTY"].ToString() == "" ? "0" : drDetail["QTY"].ToString()) *
                                        decimal.Parse(drDetail["Price"].ToString() == "" ? "0" : drDetail["Price"].ToString()), 2);
                                }
                                try
                                {
                                    drDetail["Customer"] = gbqb.GetName("Customer", "CustomerName", drDetail["CustomerID"].ToString());
                                    drDetail["Color"] = gbqb.GetName("Colors", "Color", drDetail["ColorID"].ToString());
                                    drDetail["Remark"] = gbqb.GetName("Process", "Process", drDetail["ProcessID"].ToString());
                                }
                                catch
                                { }

                            }
                            else if (drDetail.RowState.ToString() == "Modified")
                            {
                                if (drDetail["ShippingTime"].ToString() == "")
                                {
                                    drDetail["ShippingTime"] = System.DateTime.Now.ToShortDateString();
                                }
                                //允许用户手动输入 如需要触发计算公式则需要清空该栏位
                                if (drDetail["APerKilogram"].ToString() == "" || drDetail["APerKilogram"].ToString() == "0")
                                {
                                    //处理除数不能为零的bug
                                    if (drDetail["SampleWeight"].ToString() == "" || drDetail["SampleWeight"].ToString() == "0.00" || drDetail["SampleWeight"].ToString() == "0")
                                    {
                                        drDetail["APerKilogram"] = Math.Round((500 / 1) * decimal.Parse(drDetail["SampleQTY"].ToString() == "" ? "0" : drDetail["SampleQTY"].ToString()), 2);
                                    }
                                    else
                                    {
                                        drDetail["APerKilogram"] = Math.Round((500 / decimal.Parse(drDetail["SampleWeight"].ToString())) *
                                            decimal.Parse(drDetail["SampleQTY"].ToString() == "" ? "0" : drDetail["SampleQTY"].ToString()), 2);
                                    }
                                }
                                drDetail["QTY"] = Math.Round(decimal.Parse(drDetail["ShippingQTY"].ToString() == "" ? "0" : drDetail["ShippingQTY"].ToString()) *
                                    decimal.Parse(drDetail["APerKilogram"].ToString() == "" ? "0" : drDetail["APerKilogram"].ToString()), 1);
                                drDetail["SurplusQTY"] = (double.Parse(drDetail["ReceivingQTY"].ToString() == "" ? "0" : drDetail["ReceivingQTY"].ToString()) -
                                    double.Parse(drDetail["OutShipping"].ToString() == "" ? "0" : drDetail["OutShipping"].ToString()) -
                                    double.Parse(drDetail["ShippingQTY"].ToString() == "" ? "0" : drDetail["ShippingQTY"].ToString())).ToString();
                                //dr["OutShipping"] = (double.Parse(dr["ReceivingQTY"].ToString() == "" ? "0" : dr["ReceivingQTY"].ToString()) - double.Parse(dr["SurplusQTY"].ToString() == "" ? "0" : dr["SurplusQTY"].ToString())).ToString();
                                if (drDetail["ElectroplatingWay"].ToString() == "滚镀")
                                {
                                    drDetail["Amount"] = Math.Round(decimal.Parse(drDetail["ShippingQTY"].ToString() == "" ? "0" : drDetail["ShippingQTY"].ToString()) *
                                        decimal.Parse(drDetail["Price"].ToString() == "" ? "0" : drDetail["Price"].ToString()), 2);
                                }
                                else
                                {
                                    drDetail["Amount"] = Math.Round(decimal.Parse(drDetail["QTY"].ToString() == "" ? "0" : drDetail["QTY"].ToString()) *
                                        decimal.Parse(drDetail["Price"].ToString() == "" ? "0" : drDetail["Price"].ToString()), 2);
                                }
                                try
                                {
                                    drDetail["Customer"] = gbqb.GetName("Customer", "CustomerName", drDetail["CustomerID"].ToString());
                                    drDetail["Color"] = gbqb.GetName("Colors", "Color", drDetail["ColorID"].ToString());
                                    drDetail["Remark"] = gbqb.GetName("Process", "Process", drDetail["ProcessID"].ToString());
                                }
                                catch
                                { }
                            }
                            index++;
                        }
                    }
                    else if (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New")
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
                        dr["CustomerID"] = cbxCustomer.SelectedValue;
                        dr["PaymentTerms"] = cbxPaymentTerms.Text;
                        dr["ElectroplatingWay"] = cbxElectroplatingWay.Text;
                        dr["BillNo"] = ftn.getDetailBillNo(dt[0].Rows[0]["BillNo"].ToString(), "-", index - 1, 3);
                        if (dr["ReceivingTime"].ToString() == "")
                        {
                            dr["ReceivingTime"] = System.DateTime.Now.ToShortDateString();
                        }
                        dr["MasterInnerID"] = guid;
                        dr["MasterBillNo"] = txtBillNo.Text;
                        dr["Creater"] = string.IsNullOrEmpty(LoginAttribute.UserName) ? LoginAttribute.UserID : LoginAttribute.UserName;
                        dr["CreateDate"] = System.DateTime.Now.ToString();
                        if (dr["ShippingTime"].ToString() == "")
                        {
                            dr["ShippingTime"] = System.DateTime.Now.ToShortDateString();
                        }
                        //允许用户手动输入 如需要触发计算公式则需要清空该栏位
                        if (dr["APerKilogram"].ToString() == "" || dr["APerKilogram"].ToString() == "0")
                        {
                            //处理除数不能为零的bug
                            if (dr["SampleWeight"].ToString() == "" || dr["SampleWeight"].ToString() == "0.00" || dr["SampleWeight"].ToString() == "0")
                            {
                                dr["APerKilogram"] = Math.Round((500 / 1) * decimal.Parse(dr["SampleQTY"].ToString() == "" ? "0" : dr["SampleQTY"].ToString()), 2);
                            }
                            else
                            {
                                dr["APerKilogram"] = Math.Round((500 / decimal.Parse(dr["SampleWeight"].ToString())) *
                                    decimal.Parse(dr["SampleQTY"].ToString() == "" ? "0" : dr["SampleQTY"].ToString()), 2);
                            }
                        }
                        dr["QTY"] = Math.Round(decimal.Parse(dr["ShippingQTY"].ToString() == "" ? "0" : dr["ShippingQTY"].ToString()) *
                            decimal.Parse(dr["APerKilogram"].ToString() == "" ? "0" : dr["APerKilogram"].ToString()), 1);
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
                        try
                        {
                            dr["Customer"] = gbqb.GetName("Customer", "CustomerName", dr["CustomerID"].ToString());
                            dr["Color"] = gbqb.GetName("Colors", "Color", dr["ColorID"].ToString());
                            dr["Remark"] = gbqb.GetName("Process", "Process", dr["ProcessID"].ToString());
                        }
                        catch
                        { }
                    }
                }
            }
            catch (Exception ex)
            {
                txtMessage.Text = "Error:" + ex.Message;
            }
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (dt[1].Rows.Count >= 1 && dt[1].Rows.Count > dagShipOrderDetail.SelectedIndex &&
                (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") || tbaToolBar.State == "Modify")
            {
                MessageBoxResult mbr = MessageBox.Show("请确认删除发货序号为：" + dt[1].Rows[dagShipOrderDetail.SelectedIndex]["BillNo"].ToString() + " 的记录?", "警告", MessageBoxButton.YesNo, MessageBoxImage.Warning);
                if (mbr == MessageBoxResult.Yes)
                {
                    dt[1].Rows[dagShipOrderDetail.SelectedIndex].Delete();
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

        }

        private void btnTurnShipOrder_Click(object sender, RoutedEventArgs e)
        {
            ParameterPassing.ParamWhere = new string[] { cbxCustomer.SelectedValue.ToString().Trim(), cbxPaymentTerms.Text, cbxElectroplatingWay.Text };
            tbaToolBar.State = "trun";
            BasicControl.AssemblyName = "OA";
            BasicControl.WinClassName = "OA.InvoiceManage.InviceDetail";
            ParameterPassing.UserDataTable = dt;
            bc.CreateForm("InvoiceDetail", "发票明细");
        }

        private void dagShipOrderDetail_CellEditEnding(object sender, DataGridCellEditEndingEventArgs e)
        {
            //try
            //{
            //    dr = ((DataRowView)dagShipOrderDetail.SelectedItem).Row;
            //    if (dr["ReceivingTime"].ToString() == "")
            //    {
            //        dr["ReceivingTime"] = System.DateTime.Now.ToShortDateString();
            //    }
            //    //允许用户手动输入 如需要触发计算公式则需要清空该栏位
            //    if (dr["APerKilogram"].ToString() == "" || dr["APerKilogram"].ToString() == "0")
            //    {
            //        //处理除数不能为零的bug
            //        if (dr["SampleWeight"].ToString() == "" || dr["SampleWeight"].ToString() == "0.00" || dr["SampleWeight"].ToString() == "0")
            //        {
            //            dr["APerKilogram"] = Math.Round((500 / 1) * decimal.Parse(dr["SampleQTY"].ToString() == "" ? "0" : dr["SampleQTY"].ToString()), 2);
            //        }
            //        else
            //        {
            //            dr["APerKilogram"] = Math.Round((500 / decimal.Parse(dr["SampleWeight"].ToString())) *
            //                decimal.Parse(dr["SampleQTY"].ToString() == "" ? "0" : dr["SampleQTY"].ToString()), 2);
            //        }
            //    }
            //    dr["QTY"] = Math.Round(decimal.Parse(dr["ShippingQTY"].ToString() == "" ? "0" : dr["ShippingQTY"].ToString()) *
            //        decimal.Parse(dr["APerKilogram"].ToString() == "" ? "0" : dr["APerKilogram"].ToString()), 1);
            //    dr["SurplusQTY"] = (double.Parse(dr["ReceivingQTY"].ToString() == "" ? "0" : dr["ReceivingQTY"].ToString()) -
            //        double.Parse(dr["OutShipping"].ToString() == "" ? "0" : dr["OutShipping"].ToString()) -
            //        double.Parse(dr["ShippingQTY"].ToString() == "" ? "0" : dr["ShippingQTY"].ToString())).ToString();
            //    //dr["OutShipping"] = (double.Parse(dr["ReceivingQTY"].ToString() == "" ? "0" : dr["ReceivingQTY"].ToString()) - double.Parse(dr["SurplusQTY"].ToString() == "" ? "0" : dr["SurplusQTY"].ToString())).ToString();
            //    if (dr["ElectroplatingWay"].ToString() == "滚镀")
            //    {
            //        dr["Amount"] = Math.Round(decimal.Parse(dr["ShippingQTY"].ToString() == "" ? "0" : dr["ShippingQTY"].ToString()) *
            //            decimal.Parse(dr["Price"].ToString() == "" ? "0" : dr["Price"].ToString()), 2);
            //    }
            //    else
            //    {
            //        dr["Amount"] = Math.Round(decimal.Parse(dr["QTY"].ToString() == "" ? "0" : dr["QTY"].ToString()) *
            //            decimal.Parse(dr["Price"].ToString() == "" ? "0" : dr["Price"].ToString()), 2);
            //    }
            //    dr["Customer"] = gbqb.GetName("Customer", "CustomerName", dr["CustomerID"].ToString());
            //    dr["Color"] = gbqb.GetName("Colors", "Color", dr["ColorID"].ToString());
            //    dr["Remark"] = gbqb.GetName("Process", "Process", dr["ProcessID"].ToString());
            //}
            //catch (Exception ex)
            //{
            //    txtMessage.Text = "Error:" + ex.Message;
            //}
        }

        private void dagShipOrderDetail_InitializingNewItem(object sender, InitializingNewItemEventArgs e)
        {
            //dr = ((DataRowView)e.NewItem).Row;
            //dr["InnerID"] = Guid.NewGuid();
            //dr["RowId"] = dagShipOrderDetail.Items.Count - 1;
            //dr["BillNo"] = ftn.getDetailBillNo(dt[0].Rows[0]["BillNo"].ToString(), "-", dagShipOrderDetail.Items.Count - 1, 3);
            //dr["CustomerID"] = cbxCustomer.SelectedValue;
            //dr["PaymentTerms"] = cbxPaymentTerms.Text;
            //dr["ElectroplatingWay"] = cbxElectroplatingWay.Text;
            //dr["ShippingTime"] = System.DateTime.Now.ToShortDateString();
            //dr["MasterInnerID"] = guid;
            //dr["MasterBillNo"] = txtBillNo.Text;
            //dr["Creater"] = userName == "" ? LoginAttribute.UserID : userName;
            //dr["CreateDate"] = System.DateTime.Now.ToString();
        }
    }
}
