using System;
using System.Data;
using System.Windows;
using System.Windows.Controls;
using UIControl;
using Attribute;
using BusinessLogicLevel;
using System.Threading;

namespace WpfCustomControlLibrary
{
    /// <summary>
    /// Interaction logic for ToolBarAdvanced.xaml
    /// </summary>
    public partial class ToolBarAdvanced : UserControl
    {
        BasicControl bc = new BasicControl();
        ResourcesOpt ropt = new ResourcesOpt();
        DataTable dtOpenWin = new DataTable();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        Function f = new Function();
        DataTable dt = new DataTable();

        public ToolBarAdvanced()
        {
            InitializeComponent();
            State = "Ready";
        }

        //查询表
        private static readonly DependencyProperty dtQuery =
            DependencyProperty.Register("TableQuery", typeof(DataTable[]), typeof(ToolBarAdvanced));
        //private DataTable[] dtQuery;
        //查询表
        public DataTable[] TableQuery
        {
            get { return (DataTable[])base.GetValue(dtQuery); }
            set { base.SetValue(dtQuery, value); }
        }

        //窗体名称
        string titleName;
        //窗体名称
        public string TitleName
        {
            get { return titleName; }
            set { titleName = value; }
        }

        //添加
        string addString;
        //添加
        public string AddString
        {
            get { return addString; }
            set { addString = value; }
        }

        //状态
        private static readonly DependencyProperty state =
            DependencyProperty.Register("State", typeof(string), typeof(ToolBarAdvanced));
        //状态
        public string State
        {
            get { return (string)base.GetValue(state); }
            set { base.SetValue(state, value); }
        }

        private static readonly DependencyProperty message =
            DependencyProperty.Register("Message", typeof(string), typeof(ToolBarAdvanced));
        //消息
        public string Message
        {
            get { return (string)base.GetValue(message); }
            set { base.SetValue(message, value); }
        }

        private static readonly DependencyProperty isreadonly =
            DependencyProperty.Register("IsReadOnly", typeof(bool), typeof(ToolBarAdvanced));
        //是否只读
        public bool IsReadOnly
        {
            get { return (bool)base.GetValue(isreadonly); }
            set { base.SetValue(isreadonly, value); }
        }

        private static readonly DependencyProperty billno =
            DependencyProperty.Register("BillNo", typeof(string), typeof(ToolBarAdvanced));
        //单据编号
        public string BillNo
        {
            get { return (string)base.GetValue(billno); }
            set { base.SetValue(billno, value); }
        }

        private static readonly DependencyProperty assemblyName =
            DependencyProperty.Register("AssemblyName", typeof(string), typeof(ToolBarAdvanced));
        //预览窗体AssemblyName
        public string AssemblyName
        {
            get { return (string)base.GetValue(assemblyName); }
            set { base.SetValue(assemblyName, value); }
        }

        private static readonly DependencyProperty winClassName =
            DependencyProperty.Register("WinClassName", typeof(string), typeof(ToolBarAdvanced));
        //预览窗体WinClassName
        public string WinClassName
        {
            get { return (string)base.GetValue(winClassName); }
            set { base.SetValue(winClassName, value); }
        }

        private static readonly DependencyProperty copyAssemblyName =
            DependencyProperty.Register("CopyAssemblyName", typeof(string), typeof(ToolBarAdvanced));
        //预览窗体AssemblyName
        public string CopyAssemblyName
        {
            get { return (string)base.GetValue(copyAssemblyName); }
            set { base.SetValue(copyAssemblyName, value); }
        }

        private static readonly DependencyProperty copyWinClassName =
            DependencyProperty.Register("CopyWinClassName", typeof(string), typeof(ToolBarAdvanced));
        //预览窗体WinClassName
        public string CopyWinClassName
        {
            get { return (string)base.GetValue(copyWinClassName); }
            set { base.SetValue(copyWinClassName, value); }
        }

        private static readonly DependencyProperty fromTableName =
            DependencyProperty.Register("FromTableName", typeof(string[]), typeof(ToolBarAdvanced));
        //来源表
        public string[] FromTableName
        {
            get { return (string[])base.GetValue(fromTableName); }
            set { base.SetValue(fromTableName, value); }
        }

        private static readonly DependencyProperty reportPath =
            DependencyProperty.Register("reportFileName", typeof(string), typeof(ToolBarAdvanced));
        //RDLC报表路径
        public string reportFileName
        {
            get { return (string)base.GetValue(reportPath); }
            set { base.SetValue(reportPath, value); }
        }

        public Boolean ValidateValue(object Value)
        {
            return true;
        }

        private void ToolBarExpert_Loaded(object sender, RoutedEventArgs e)
        {
            //设置按钮上的图标
            imgSearch.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Search, System.Drawing.Imaging.ImageFormat.Png);
            imgAdd.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Add, System.Drawing.Imaging.ImageFormat.Png);
            imgCopy.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Copy, System.Drawing.Imaging.ImageFormat.Png);
            imgModify.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Modify, System.Drawing.Imaging.ImageFormat.Png);
            imgSave.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Save, System.Drawing.Imaging.ImageFormat.Png);
            imgDel.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Delete, System.Drawing.Imaging.ImageFormat.Png);
            imgLayIn.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.LayIn, System.Drawing.Imaging.ImageFormat.Png);
            imgExport.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Export, System.Drawing.Imaging.ImageFormat.Png);
            imgCancel.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Cancel, System.Drawing.Imaging.ImageFormat.Png);
            imgAuditing.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Auditing, System.Drawing.Imaging.ImageFormat.Png);
            imgUnaudited.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Unaudited, System.Drawing.Imaging.ImageFormat.Png);
            imgPrintPreview.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.PrintPreview, System.Drawing.Imaging.ImageFormat.Png);
            imgPrint.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.Print, System.Drawing.Imaging.ImageFormat.Png);
            imgCanCellation.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.CanCellation, System.Drawing.Imaging.ImageFormat.Png);
            imgUnCanCellation.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.UnCanCellation, System.Drawing.Imaging.ImageFormat.Png);
            imgAdvancedQuery.Source = ropt.GetResources(WpfCustomControlLibrary.Properties.Resources.AdvancedQuery, System.Drawing.Imaging.ImageFormat.Png);

            dtOpenWin = TemporarilyTable.OpenWindows;

        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //实例化的窗体类
                BasicControl.AssemblyName = "GeneralUI";
                BasicControl.WinClassName = "GeneralUI.ModuleBasicQuery";
                DataRow[] dw = dtOpenWin.Select("WindowsName = '" + titleName + "'");
                foreach (DataRow dr in dw)
                {
                    ParameterPassing.ParamTable = new string[] { dr[5].ToString() };
                }
                //实例化指定的窗体
                bc.CreateForm(titleName.Substring(0, titleName.IndexOf('-')), "");
            }
            catch (Exception ex)
            {
                Message = ex.Message;
            }
        }

        private void btnAdd_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                State = "Add";
                BasicControl.InnerID = Guid.NewGuid().ToString();
                //实例化的窗体类
                DataRow[] dw = dtOpenWin.Select("WindowsName = '" + titleName + "'");
                foreach (DataRow dr in dw)
                {
                    BasicControl.AssemblyName = dr[2].ToString();
                    BasicControl.WinClassName = dr[3].ToString();
                    ParameterPassing.ParamTable = new string[] { dr[5].ToString() };
                }
                //实例化指定的窗体（在标题不包含“新增”字样时实例化）
                if (!titleName.Contains("New"))
                {
                    State = "Ready";
                    bc.CreateForm("New", titleName.Substring(0, titleName.IndexOf('-')));
                }
            }
            catch (Exception ex)
            {
                Message = ex.Message;
            }
        }

        private void btnSave_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                dt = TableQuery[0];
                //获取主表
                DataRow[] dw = dtOpenWin.Select("WindowsName = '" + titleName + "'");
                if (State == "Add" || this.titleName.Split('-')[2] == "New" || State == "Copy" || State == "trun")
                {
                    if (!gbqb.IsRePeat(TableQuery[0].ToString(), BillNo) || TableQuery[0].Rows[0].RowState.ToString() == "Modified")
                    {
                        IsReadOnly = true;
                        try
                        {
                            //保存并关闭窗体
                            foreach (DataRow dr in dw)
                            {
                                BasicControl.InnerID = dr[0].ToString();
                                BasicControl.AssemblyName = dr[2].ToString();
                                BasicControl.WinClassName = dr[3].ToString();
                                for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                                {
                                    if (OrderStart.TrunStart == "trun")
                                    {
                                        if (FromTableName[CurrentTable] != "")
                                        {
                                            //修改来源单状态（考虑框架代码）
                                            foreach (DataRow drT in TableQuery[CurrentTable].Rows)
                                            {
                                                if (string.IsNullOrEmpty(drT["FromBillNo"].ToString()))
                                                    continue;//跳出本次循环
                                                gbqb.UpdateSync("update " + FromTableName[CurrentTable] + " set State=1 from " + TableQuery[CurrentTable].TableName + " A " +
                                                    "inner join " + FromTableName[CurrentTable] + " B on A.FromBillNo=B.BillNo and A.FromInnerID=B.InnerID " +
                                                    "where A.FromBillNo='" + drT["FromBillNo"].ToString() + "'");
                                            }
                                        }
                                        if (CurrentTable == TableQuery.Length - 1)
                                        {
                                            OrderStart.TrunStart = "";
                                        }
                                    }
                                    gbqb.UpdateTable(TableQuery[CurrentTable].TableName, TableQuery[CurrentTable]);
                                    
                                }
                            }
                        }
                        catch(Exception ex)
                        {
                            //保存失败则删除表头数据
                            dt.Rows[0].Delete();
                            gbqb.UpdateTable(dt.TableName, dt);
                            //反过账语法

                            //抛出异常
                            Message = "错误：" + ex.Message;
                            //不继续往下执行
                            IsReadOnly = false;
                            return;
                        }
                        if (State == "Add" || this.titleName.Split('-')[2] == "New")
                        {
                            bc.CloseWindow(titleName);
                            //重新打开新增的资料
                            bc.CreateForm(TableQuery[0].Rows[0]["BillNo"].ToString(), this.titleName.Split('-')[0]);
                        }
                    }
                    else
                    {
                        IsReadOnly = false;
                        State = "Warning";
                        //MessageBox.Show("单据编号不能重复。", "警告", MessageBoxButton.OK, MessageBoxImage.Exclamation);
                        Message = "警告：单据编号不能重复。";
                    }
                }
                else if (State == "Modify")
                {
                    IsReadOnly = true;
                    //保存
                    for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                    {
                        if (State == "trun")
                        {
                            if (FromTableName[CurrentTable] != "")
                            {
                                //修改来源单状态（考虑框架代码）
                                foreach (DataRow drT in TableQuery[CurrentTable].Rows)
                                {
                                    gbqb.UpdateSync("update " + FromTableName[CurrentTable] + " set State=1 from " + TableQuery[CurrentTable].TableName + " A " +
                                        "inner join " + FromTableName[CurrentTable] + " B on A.FromBillNo=B.BillNo and A.FromInnerID=B.InnerID " +
                                        "where A.FromBillNo='" + drT["FromBillNo"].ToString() + "'");
                                }
                            }
                            if (CurrentTable == TableQuery.Length - 1)
                            {
                                State = "Ready";
                            }
                        }

                        gbqb.UpdateTable(TableQuery[CurrentTable].TableName, TableQuery[CurrentTable]);
                        //反过账语法
                    }
                }
                State = "Ready";
            }
            catch (Exception ex)
            {
                IsReadOnly = false;
                Message = "Error:" + ex.Message;
                //MessageBox.Show(ex.Message, "Error", MessageBoxButton.OK, MessageBoxImage.Error);
            }
        }

        private void btnModify_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //判断是否审核
                if (TableQuery[0].Rows[0]["AuditorState"].ToString() != "1")
                {
                    IsReadOnly = false;
                    if (this.titleName.Split('-')[2] != "New")
                    {
                        State = "Modify";
                        for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                        {
                            foreach (DataRow dr in TableQuery[CurrentTable].Rows)
                            {
                                dr["Modifier"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                                dr["ModifiedDate"] = System.DateTime.Now.ToString();
                            }
                        }
                    }
                }
                else
                {
                    Message = "单据已审核，不能修改!";
                }
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnCopy_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                State = "Copy";
                OrderStart.CopyStart = "Copy";
                //实例化的窗体类
                BasicControl.AssemblyName = CopyAssemblyName;
                BasicControl.WinClassName = CopyWinClassName;
                BasicControl.InnerID = Guid.NewGuid().ToString();
                bc.CreateForm("New", titleName.Split('-')[0]);
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnDelete_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (TableQuery[0].Rows[0]["State"].ToString() == "1")
                {
                    Message = "警告：已做出货，不能删除。";
                }
                else
                {
                    //判断是否审核
                    if (TableQuery[0].Rows[0]["AuditorState"].ToString() != "1")
                    {
                        MessageBoxResult mbr = System.Windows.MessageBox.Show("请确认，是否删本笔资料？", "消息提醒", MessageBoxButton.YesNo, MessageBoxImage.Asterisk);
                        if (mbr == MessageBoxResult.Yes)
                        {
                            State = "Delete";
                            for (int CurrentTable = TableQuery.Length - 1; CurrentTable >= 0; CurrentTable--)
                            {
                                if (CurrentTable == 0)
                                {
                                    int count = TableQuery[CurrentTable].Select("InnerID = '" + addString + "'").Length;

                                    for (int CurrentRow = count - 1; CurrentRow >= 0; CurrentRow--)
                                    {
                                        TableQuery[CurrentTable].Select("InnerID = '" + addString + "'")[CurrentRow].Delete();
                                    }
                                }
                                else if (CurrentTable > 0)
                                {
                                    int count = TableQuery[CurrentTable].Select("MasterInnerID = '" + addString + "'").Length;

                                    for (int CurrentRow = count - 1; CurrentRow >= 0; CurrentRow--)
                                    {
                                        TableQuery[CurrentTable].Select("MasterInnerID = '" + addString + "'")[CurrentRow].Delete();
                                    }
                                }

                                //删除并关闭窗体
                                gbqb.UpdateTable(TableQuery[CurrentTable].TableName, TableQuery[CurrentTable]);
                                TableQuery[CurrentTable].AcceptChanges();
                                //反过账语法

                            }
                            bc.CloseWindow(titleName);
                        }
                    }
                    else
                    {
                        Message = "警告：已审核，不能删除。";
                    }
                }
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnExport_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                if (this.titleName.Split('-')[2] != "New")
                {
                    //导出
                    State = "Export";
                    ExcelOperation excelopt = new ExcelOperation(TableQuery);
                    Thread t = new Thread(new ThreadStart(excelopt.ThreadProc));
                    t.Start();
                    btnExport.IsEnabled = false;
                    t.Join();
                    btnExport.IsEnabled = true;
                    //excelopt.ExportExcel(dtQuery);
                }
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnInvalid_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //作废
                State = "Modify";
                if (this.titleName.Split('-')[2] != "New")
                {
                    for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                    {
                        foreach (DataRow dr in TableQuery[CurrentTable].Rows)
                        {
                            dr["Invalid"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                            dr["DateObsolete"] = System.DateTime.Now.ToString();
                            dr["InvalidState"] = 1;
                        }
                    }
                }
                btnSave_Click(sender, e);
                State = "Invalid";
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnValid_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //判断是否审核
                if (TableQuery[0].Rows[0]["AuditorState"].ToString() != "1" && (LoginAttribute.UserID == "system" || LoginAttribute.UserID == "admin"))
                {
                    //取消作废
                    State = "Modify";
                    if (this.titleName.Split('-')[2] != "New")
                    {
                        for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                        {
                            foreach (DataRow dr in TableQuery[CurrentTable].Rows)
                            {
                                dr["Invalid"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID + " 取消作废" : gbqb.GetName(LoginAttribute.UserID) + " 取消作废";
                                dr["DateObsolete"] = System.DateTime.Now.ToString();
                                dr["InvalidState"] = 0;
                            }
                        }
                    }
                    btnSave_Click(sender, e);
                    State = "Valid";
                }
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnPrintPreview_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //判断是否审核
                if (TableQuery[0].Rows[0]["AuditorState"].ToString() != "1" && this.titleName.Split('-')[2] != "New")
                {
                    btnSave_Click(sender, e);
                    btnAuditing_Click(sender, e);
                }
                State = "PrintPreview";
                ParameterPassing.ReportTable = TableQuery;
                //实例化的窗体类
                BasicControl.AssemblyName = AssemblyName;
                BasicControl.WinClassName = WinClassName;
                bc.CreateForm(BillNo, "PrintPreview");
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnAuditing_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //判断是否审核
                if (TableQuery[0].Rows[0]["AuditorState"].ToString() != "1")
                {
                    //审核                
                    State = "Modify";
                    if (this.titleName.Split('-')[2] != "New")
                    {
                        for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                        {
                            foreach (DataRow dr in TableQuery[CurrentTable].Rows)
                            {
                                dr["Auditor"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID : gbqb.GetName(LoginAttribute.UserID);
                                dr["AuditDate"] = System.DateTime.Now.ToString();
                                dr["AuditorState"] = 1;
                            }
                        }
                    }
                    btnSave_Click(sender, e);
                    State = "Auditing";
                }
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnUnaudited_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                //判断是否取消审核
                if (TableQuery[0].Rows[0]["AuditorState"].ToString() != "0" && (LoginAttribute.UserID == "system" || LoginAttribute.UserID == "admin"))
                {
                    //取消审核
                    State = "Modify";
                    if (this.titleName.Split('-')[2] != "New")
                    {
                        for (int CurrentTable = 0; CurrentTable < TableQuery.Length; CurrentTable++)
                        {
                            foreach (DataRow dr in TableQuery[CurrentTable].Rows)
                            {
                                dr["Auditor"] = gbqb.GetName(LoginAttribute.UserID) == "" ? LoginAttribute.UserID + " 取消审核" : gbqb.GetName(LoginAttribute.UserID) + " 取消审核";
                                dr["AuditDate"] = System.DateTime.Now.ToString();
                                dr["AuditorState"] = 0;
                            }
                        }
                    }
                    btnSave_Click(sender, e);
                    State = "Unaudited";
                }
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnPrint_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                f.Print(AssemblyName, reportFileName, "", TableQuery, new string[] { TableQuery[0].TableName, TableQuery[1].TableName });
            }
            catch (Exception ex)
            {
                Message = "Error:" + ex.Message;
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            MessageBoxResult mbr = MessageBox.Show("是否取消本次操作，取消请按“是”，否则请按“否”。", "消息提醒", MessageBoxButton.YesNo, MessageBoxImage.Information);
            if (mbr == MessageBoxResult.Yes)
            {
                foreach (DataTable table in TableQuery)
                {
                    table.RejectChanges();
                }
                State = "Ready";
                IsReadOnly = true;
            }
        }

    }
}
