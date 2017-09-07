using System;
using System.Collections.Generic;
using System.Data;
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
using WpfCustomControlLibrary;

namespace GeneralUI
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        ResourcesOpt ropt = new ResourcesOpt();

        public MainWindow()
        {
            InitializeComponent();

            DataTable dt = new DataTable();
            dt.Columns.Add("11");
            dt.Columns.Add("22");
            dt.Columns.Add("33");

            dt.Rows.Add("1","2","3");
        }
    }
}
