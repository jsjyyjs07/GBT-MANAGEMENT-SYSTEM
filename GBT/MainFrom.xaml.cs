using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using GeneralUI;
using WpfCustomControlLibrary;
using System.Reflection;
using BusinessLogicLevel;
using System.Data;
using Attribute;
using UIControl;
using WindowsAPI;
using System.Windows.Interop;

namespace GBT
{

    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        ResourcesOpt ropt = new ResourcesOpt();
        BasicControl bc = new BasicControl();
        ClipboardImage cImg = new ClipboardImage();

        string AssemblyName = "GeneralUI";
        string WinClassName = "GeneralUI.ModuleBasicQuery";
        string userName = "";
        WindowInteropHelper wih = null;
        public MainWindow()
        {
            InitializeComponent();
            //加载Icon图标
            this.Icon = ropt.GetResources(GBT.Properties.Resources.GBT);
            //获取用户姓名
            userName = LoginAttribute.UserName;
            if (string.IsNullOrEmpty(userName))
            {
                lblName.Content = LoginAttribute.UserID.ToUpper();
            }
            else
            {
                lblName.Content = userName;
            }

            //加载图片
            imgPhoto.Source = ropt.GetResources(GBT.Properties.Resources.Face, System.Drawing.Imaging.ImageFormat.Png);
            //读取窗体位置
            var userPrefs = new UserPreferences();
            this.Height = userPrefs.WindowHeight;
            this.Width = userPrefs.WindowWidth;
            this.Top = userPrefs.WindowTop;
            this.Left = userPrefs.WindowLeft;
            this.WindowState = userPrefs.WindowState;

            App.notifyIcon.Icon = GBT.Properties.Resources.GBT;
            App.notifyIcon.Visible = true;

            //打开菜单项
            System.Windows.Forms.MenuItem open = new System.Windows.Forms.MenuItem("打开");
            open.Click += new EventHandler(Show);
            //退出菜单项
            System.Windows.Forms.MenuItem exit = new System.Windows.Forms.MenuItem("退出");
            exit.Click += new EventHandler(Close);
            //关联托盘控件
            System.Windows.Forms.MenuItem[] childen = new System.Windows.Forms.MenuItem[] { open, exit };
            App.notifyIcon.ContextMenu = new System.Windows.Forms.ContextMenu(childen);

            App.notifyIcon.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler((o, e) =>
            {
                if (e.Button == MouseButtons.Left) this.Show(o, e);
            });

            //方法一：
            HwndSource source = PresentationSource.FromVisual(this) as HwndSource;
            if (source != null) source.AddHook(WndProc);
            wih = new WindowInteropHelper(this);
            ////方法二：
            //HwndSource source = HwndSource.FromHwnd(new WindowInteropHelper(this).Handle);
            //if (source != null) source.AddHook(WndProc);
        }

        private IntPtr WndProc(IntPtr hwnd, int msg, IntPtr wParam, IntPtr lParam, ref bool handled)
        {
            const int WM_HOTKEY = 0x0312;

            //按快捷键
            switch (msg)
            {
                case WM_HOTKEY:
                    switch (msg)
                    {
                        case 103:
                            
                            break;
                        case 104:
                            
                            break;

                    }
                    break;
            }
            return IntPtr.Zero;
        }

        bool isShow = false;

        public bool IsShow
        {
            get { return isShow; }
            set { isShow = value; }
        }

        private void Show(object sender, EventArgs e)
        {
            this.Visibility = System.Windows.Visibility.Visible;
            this.ShowInTaskbar = true;
            this.Activate();
            bc.ActionWindow(this.Title);
        }

        private void Close(object sender, EventArgs e)
        {
            App.notifyIcon.Dispose();
            App.LoginNotifyIcon.Dispose();
            System.Windows.Application.Current.Shutdown();
        }

        private void MainFrom_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            MessageBoxResult dr = System.Windows.MessageBox.Show("是否关闭程序？", "窗体消息", MessageBoxButton.OKCancel, MessageBoxImage.Information);
            if (dr == MessageBoxResult.OK)
            {
                //保存窗体位置
                var userPrefs = new UserPreferences();
                userPrefs.WindowHeight = this.Height;
                userPrefs.WindowWidth = this.Width;
                userPrefs.WindowTop = this.Top;
                userPrefs.WindowLeft = this.Left;
                userPrefs.WindowState = this.WindowState;
                userPrefs.Save();
                //释放托盘图标
                App.notifyIcon.Dispose();
                App.LoginNotifyIcon.Dispose();
                //卸载全局快捷键
                cImg.UnregisterShortcuts(wih.Handle);
                //关闭窗体
                System.Windows.Application.Current.Shutdown();
            }
            else
            {
                e.Cancel = true;
            }
        }

        /// <summary>
        /// 打开功能窗体
        /// </summary>
        /// <param name="tvi"></param>
        /// <param name="tables"></param>
        private void OpenWindwos(TreeViewItem tvi, string[] tables)
        {
            //实例化的窗体类
            BasicControl.AssemblyName = AssemblyName;
            BasicControl.WinClassName = WinClassName;
            LoginAttribute.Module = tvi.Header.ToString();
            //指定数据库表名
            ParameterPassing.ParamTable = tables;
            //实例化指定的窗体
            bc.CreateForm(tvi.Header.ToString(), "");
        }

        private void tviPrivilege_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviPrivilege, new string[] { "Privilege" });
        }

        private void tviSubscribe_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void tviSubscribeDetail_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void tviSuppliersType_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviSuppliersType, new string[] { "SuppliersType" });
        }

        private void Test_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            //实例化的窗体类
            BasicControl.AssemblyName = "Test";
            BasicControl.WinClassName = "Test.MainWindow";
            //实例化指定的窗体
            bc.CreateForm(Test.Header.ToString(), "");
        }

        private void tviUnit_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviUnit, new string[] { "Unit" });
        }

        private void tviBGInfoTable_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviBGInfoTable, new string[] { "BGInfoTable" });
        }

        private void tviEmployee_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviEmployee, new string[] { "EmployeeInformation" });
        }

        private void tviMaterialRequisition_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        private void tviCompany_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviCompany, new string[] { "Company" });
        }

        private void tviDepartment_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviDepartment, new string[] { "Department" });
        }

        private void tviUser_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviUser, new string[] { "Users" });
        }

        private void tviProduct_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviProduct, new string[] { "Product" });
        }

        private void tviSuppliers_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviSuppliers, new string[] { "Suppliers" });
        }

        private void tviPutInStock_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            OpenWindwos(tviPutInStock, new string[] { "StockIn" });
        }

        private void tvItem_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {

        }

        //private void tviInvoice_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviInvoice, new string[] { "Invoice" });
        //}

        //private void tviColor_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviColor, new string[] { "Colors" });
        //}

        //private void tviProcess_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviProcess, new string[] { "Process" });
        //}

        //private void tviInvoiceDetail_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviInvoice, new string[] { "InvoiceDetail" });
        //}

        //private void tviCustomer_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviCustomer, new string[] { "Customer" });
        //}

        //private void tviShipOrder_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviShipOrder, new string[] { "ShipOrder" });
        //}

        //private void tviShipOrderDetail_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviShipOrder, new string[] { "ShipOrderDetail" });
        //}

        //private void tviStockIn_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviStockIn, new string[] { "StockIn" });
        //}

        //private void tviStockInDetail_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviStockIn, new string[] { "StockInDetail" });
        //}

        //private void tviStockOut_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviStockOut, new string[] { "StockOut" });
        //}

        //private void tviStockOutDetail_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    OpenWindwos(tviStockOut, new string[] { "StockOutDetail" });
        //}

        //private void tviWareHouse_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        //{
        //    //实例化的窗体类
        //    BasicControl.AssemblyName = "OA";
        //    BasicControl.WinClassName = "OA.InvoiceManage.WareHouse";
        //    //实例化指定的窗体
        //    bc.CreateForm(tviWareHouse.Header.ToString(), "");
        //}

        private void MainFrom_Activated(object sender, EventArgs e)
        {
            //注册全局快捷键
            cImg.RegisterShortcuts(wih.Handle);
        }
    }
}
