using System;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Input;
using System.Windows.Media;
using Attribute;
using WpfCustomControlLibrary;
using System.Timers;
using SystemInitialization;
using UIControl;
using System.Windows.Forms;
using BusinessLogicLevel;

namespace GBT
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class Login : Window
    {
        Random random = new Random();
        WindowsCredentialsOpt wCredOpt = new WindowsCredentialsOpt();
        EncryptionAlgorithm eahm = new EncryptionAlgorithm();
        LoginInit logininit = new LoginInit();
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();
        
        ResourcesOpt ropt = new ResourcesOpt();
        LinqToXML ltxml = new LinqToXML("DataBase.xml");
        System.Timers.Timer timer = new System.Timers.Timer();
        BasicControl bc = new BasicControl();

        public Login()
        {
            InitializeComponent();

            App.LoginNotifyIcon.Icon= GBT.Properties.Resources.GBT;
            App.LoginNotifyIcon.Visible = true;

            App.LoginNotifyIcon.MouseDoubleClick += new System.Windows.Forms.MouseEventHandler((o, e) =>
            {
                if (e.Button == MouseButtons.Left) this.Show(o, e);
            });
        }

        private void Show(object sender, EventArgs e)
        {
            this.Visibility = System.Windows.Visibility.Visible;
            this.Activate();
            bc.ActionWindow(this.Title);
        }

        private void SystemLogin_Loaded(object sender, RoutedEventArgs e)
        {
            //初始化表参数为空
            ParameterPassing.ParamTable = new string[] { "" };
            //设置LOGO图片
            this.Icon = ropt.GetResources(GBT.Properties.Resources.GBT);

            this.Title = "Login" + random.Next();

            this.ShowInTaskbar = false;

            //创建快捷方式
            //DesktopHortcut.CreateDesktopLnk(AppDomain.CurrentDomain.BaseDirectory);
            //数据库初始化
            ltxml.readXML();
            //默认语言
            cobLanguage.SelectedIndex = 0;
            try
            {
                ////加载图片
                //BitmapImage bi = new BitmapImage();
                //bi.BeginInit();
                //bi.UriSource = new Uri(@"\\192.168.0.2\UserAccount$\logo.jpg");
                //bi.UriSource = new Uri("GBT;component/logo.jpg", UriKind.RelativeOrAbsolute);
                //bi.DecodePixelWidth = 2048;
                //bi.EndInit();
                //imgWeb.Source = bi;
                imgWeb.Source = ropt.GetResources(GBT.Properties.Resources.Logo1, System.Drawing.Imaging.ImageFormat.Png);
            }
            catch (Exception) { }

            //延时一分钟切换状态
            TimerControl(1000);
        }

        //定时器
        private void TimerControl(double interval)
        {
            timer.Elapsed += new ElapsedEventHandler(TimerEvent);
            timer.AutoReset = false;
            timer.Interval = interval;
            timer.Enabled = true;
        }

        #region 跨线程访问lblMessage控件
        private delegate void outputDelegate(string msg);
        /// <summary>
        /// 输出文本到lblManage
        /// </summary>
        /// <param name="msg">消息内容</param>
        private void output(string msg)
        {
            //this.lblMessage.Dispatcher.Invoke(new outputDelegate(outputAuction), msg);
            this.txtMessage.Dispatcher.Invoke(new outputDelegate(outputAuction), msg);
        }

        private void outputAuction(string msg)
        {
            //lblMessage.Content = msg;
            txtMessage.Foreground = new SolidColorBrush(Colors.Blue);
            txtMessage.Text = msg;
        }
        #endregion

        //计时事件
        private void TimerEvent(object sender,ElapsedEventArgs e)
        {
            output("Ready");
            timer.Enabled = false;
        }

        private void btnClose_Click(object sender, RoutedEventArgs e)
        {
            App.LoginNotifyIcon.Dispose();
            //system shutdown
            System.Windows.Application.Current.Shutdown();
        }

        private void btnMinimized_Click(object sender, RoutedEventArgs e)
        {
            //login mimimized
            this.WindowState = WindowState.Minimized;
            Hide();
        }

        private void SystemLogin_MouseDown(object sender, MouseButtonEventArgs e)
        {
            //moveable
            if (e.LeftButton == MouseButtonState.Pressed) 
            { 
                DragMove();
            }
        }

        /// <summary>
        /// 登陆验证成功，进入主系统
        /// </summary>
        private void LoginIn()
        {
            BasicControl.AssemblyName = "GBT";
            BasicControl.WinClassName = "GBT.MainWindow";
            bc.CreateForm("GBT", "Management System");
            App.LoginNotifyIcon.Dispose();
            this.Close();
        }

        private void btnLogin_Click(object sender, RoutedEventArgs e)
        {
            LoginAttribute.UserID = txtUserName.Text.Trim();
            LoginAttribute.UserPassword = txtUserPassword.Password.Trim();
            try
            {
                if (LoginAttribute.UserID == "system" && LoginAttribute.UserPassword == "sys8011" && !logininit.UserLoginValidation())
                {
                    LoginAttribute.UserName = "系统管理员";
                    ////初始化产品
                    //TemporarilyTable.Product = logininit.Product();
                    //TemporarilyTable.Unit = logininit.Unit();
                    //登陆验证
                    LoginIn();
                }
                else
                {
                    if (logininit.UserLoginValidation())
                    {
                        LoginAttribute.UserName = gbqb.GetName(LoginAttribute.UserID);
                        //初始化产品
                        //TemporarilyTable.Product = logininit.Product();
                        //登陆验证
                        LoginIn();
                    }
                    else
                    {
                        txtMessage.Foreground = new SolidColorBrush(Colors.Red);
                        txtMessage.Text = "Please check the user name or password, whether it is right, then log in again.";
                        TimerControl(60000);
                    }
                }
            }
            catch (Exception ex)
            {
                txtMessage.Foreground = new SolidColorBrush(Colors.Red);
                txtMessage.Text = ex.Message;
            }
        }

        /// <summary>
        /// 应用程序重启
        /// </summary>
        public void Restart()
        {
            //应用程序重启
            System.Reflection.Assembly.GetEntryAssembly();
            string startpath = System.IO.Directory.GetCurrentDirectory();
            System.Diagnostics.Process.Start(startpath + "\\GBT.exe");
            System.Windows.Application.Current.Shutdown();
        }

        private void cobLanguage_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            
        }

        private void btnDatabases_Click(object sender, RoutedEventArgs e)
        {
            BasicControl.AssemblyName = "TheAdministratorFrom";
            BasicControl.WinClassName = "TheAdministratorFrom.DataBases";
            bc.CreateForm("账套", "数据库");
        }

        private void txtUserPassword_KeyDown(object sender, System.Windows.Input.KeyEventArgs e)
        {
            //按下回车键时执行登录操作
            if (e.Key == Key.Enter)
            {
                btnLogin_Click(sender, e);
            }
        }

    }
}
