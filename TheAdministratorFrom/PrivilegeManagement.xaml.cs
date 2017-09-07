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
using System.Windows.Shapes;
using Attribute;
using UIControl;

namespace TheAdministratorFrom
{
    /// <summary>
    /// Interaction logic for PrivilegeManagement.xaml
    /// </summary>
    public partial class PrivilegeManagement : Window
    {
        public PrivilegeManagement()
        {
            InitializeComponent();
        }

        private void winPrivilege_Closing(object sender, System.ComponentModel.CancelEventArgs e)
        {
            BasicControl.CloseWindow(this.Name);
        }
    }
}
