using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using UIControl;
using Attribute;
using System.Data;
using BusinessLogicLevel;

namespace TheAdministratorFrom
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        BasicControl bc = new BasicControl();
        DataTable[] dt = new DataTable[10];
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();

        public MainWindow()
        {
            InitializeComponent();
        }

        private void Window_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            bc.RemoveWindow(this.Title);
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            //获取查询窗体的标题并绑定到toolbar的titlename属性
            tbaToolBar.TitleName = this.Title;

            //dt = TemporarilyTable.QueryTable;
            //this.DataContext = dt;
            //tbaToolBar.TableQuery = dt;
            try
            {
                dt[0] = gbqb.Query("Privilege", BasicControl.InnerID, "Privilege");
            }
            catch (Exception ex)
            { MessageBox.Show(ex.Message); }
            this.DataContext = dt;

            tbaToolBar.TableQuery = dt;
            dagDetail.ItemsSource = TemporarilyTable.OpenWindows.DefaultView;
            //try
            //{
            //    dagDetail.ItemsSource = gbqb.Query("Privilege", "", true).DefaultView;
            //    dagDetail.Columns[0].Visibility = Visibility.Hidden;
            //    dagDetail.Columns[1].Visibility = Visibility.Hidden;
            //}
            //catch (Exception ex)
            //{ MessageBox.Show(ex.Message); }
            //dagDetail.ItemsSource = dt.DefaultView;

            //dagDetail.ItemsSource = gbqb.Query("select * from users;select * from Privilege", 1).DefaultView;
        }
    }
}
