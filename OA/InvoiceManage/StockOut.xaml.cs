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
    /// Interaction logic for StockOut.xaml
    /// </summary>
    public partial class StockOut : Window
    {
        BasicControl bc = new BasicControl();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        DataTable[] dt = new DataTable[2];
        DataTable[] dtSource = new DataTable[2];
        string guid = "";
        string userName = "";
        string maxBillNo = "";

        public StockOut()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
            ParameterPassing.UserDataTable = new DataTable[] { };
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //初始化打印预览窗体
            tbaToolBar.AssemblyName = "OA";
            tbaToolBar.WinClassName = "OA.InvoiceManage.StockOutPrintPreview";

            userName = gbqb.GetName(LoginAttribute.UserID);
            tbaToolBar.TitleName = this.Title;
            guid = BasicControl.InnerID;
            tbaToolBar.AddString = guid;

            try
            {
                dt[0] = gbqb.Query("StockOut", guid, "StockOut");
                dt[1] = gbqb.Query("StockOutDetail", "MasterInnerID", guid, "StockOutDetail");
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

            if (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New")
            {
                tbaToolBar.IsReadOnly = false;
                try
                {
                    dtSource[0] = ParameterPassing.UserDataTable[0];
                    dtSource[1] = ParameterPassing.UserDataTable[1];
                    maxBillNo = gbqb.getMaxBillNo("StockOut", "WHERE [BillNo] like '%" +
                        dtSource[0].Rows[0]["BillNo"].ToString() + "%'");
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
                                dr["BillNo"] = maxBillNo == "" ? drSource["BillNo"].ToString() + "-1" :
                                    drSource["BillNo"].ToString() + "-" + (int.Parse(maxBillNo.Split('-')[5].ToString()) + 1).ToString();
                                dr["BillType"] = drSource["BillType"];
                                dr["BillDate"] = System.DateTime.Now.ToShortDateString();
                            }
                            dr["State"] = drSource["State"];
                            dr["Remark"] = drSource["Remark"];
                            dr["Creater"] = userName == "" ? LoginAttribute.UserID : userName;
                            dr["CreateDate"] = System.DateTime.Now.ToString();
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
                                dr["BillNo"] = maxBillNo == "" ? dt[0].Rows[0]["BillNo"].ToString() + "-" + index.ToString() :
                                    dt[0].Rows[0]["BillNo"].ToString() + "-" + index.ToString();
                                dr["RowID"] = drSource["RowID"];
                                dr["Deseription"] = drSource["Deseription"];
                                dr["Dimensions"] = drSource["Dimensions"];
                                dr["Unit"] = drSource["Unit"];
                                dr["QTY"] = drSource["QTY"];
                                dr["Price"] = drSource["Price"];
                                dr["Amount"] = drSource["Amount"];
                                dr["MasterInnerID"] = dt[0].Rows[0]["InnerID"].ToString();
                                dr["MasterBillNo"] = dt[0].Rows[0]["BillNo"].ToString();
                            }
                            dt[CurrentTable].Rows.Add(dr);
                            index++;
                        }
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show("请从入库单转入。" + ex.Message, "错误");
                }
            }

            this.DataContext = dt[0];
            tbaToolBar.TableQuery = dt;
            //cobCustomer.TableQuery = dt;

            dagStockOutDetail.ItemsSource = dt[1].DefaultView;
            ParameterPassing.BillNo = dt[0].Rows.Count >= 1 ? dt[0].Rows[0]["BillNo"].ToString() : "";

            ParameterPassing.ReportTable = dt;
        }

        private void dagInvoiceDetail_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (dt[1].Rows.Count >= 1 && tbaToolBar.State != "Delete" &&
                (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") || tbaToolBar.State == "Modify")
            {
                int index = 1;
                foreach (DataRow dr in dt[1].Rows)
                {
                    if (dr.RowState.ToString() != "Deleted")
                    {
                        dr["InnerID"] = Guid.NewGuid();
                        dr["MasterInnerID"] = guid;
                        dr["MasterBillNo"] = txtBillNo.Text;
                        dr["Creater"] = userName == "" ? LoginAttribute.UserID : userName;
                        dr["CreateDate"] = System.DateTime.Now.ToString();
                        dr["Amount"] = Math.Round(decimal.Parse(dr["QTY"].ToString() == "" ? "0" : dr["QTY"].ToString()) *
                            decimal.Parse(dr["Price"].ToString() == "" ? "0" : dr["Price"].ToString()), 2);
                        index++;
                    }
                }
            }
        }

        private void MenuItem_Click(object sender, RoutedEventArgs e)
        {
            if (dt[1].Rows.Count >= 1 && dt[1].Rows.Count > dagStockOutDetail.SelectedIndex &&
                (tbaToolBar.State == "Add" || this.Title.Split('-')[2] == "New") || tbaToolBar.State == "Modify")
            {
                dt[1].Rows[dagStockOutDetail.SelectedIndex].Delete();
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
    }
}
