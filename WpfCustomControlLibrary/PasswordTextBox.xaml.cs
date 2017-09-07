using System;
using System.Windows;
using System.Windows.Controls;

namespace WpfCustomControlLibrary
{
    /// <summary>
    /// Interaction logic for PasswordTextBox.xaml
    /// </summary>
    public partial class PasswordTextBox : UserControl
    {
        EncryptionAlgorithm ea = new EncryptionAlgorithm();

        public PasswordTextBox()
        {
            InitializeComponent();
        }

        //密码
        private static readonly DependencyProperty password =
            DependencyProperty.Register("Password", typeof(string), typeof(PasswordTextBox));
        /// <summary>
        /// 密码(只设置)
        /// </summary>
        public string Password
        {
            get { return (string)base.GetValue(password); }
            set { base.SetValue(password, value); }
        }

        private static readonly DependencyProperty isreadonly =
            DependencyProperty.Register("IsReadOnly", typeof(bool), typeof(PasswordTextBox));
        /// <summary>
        /// 是否只读
        /// </summary>
        public bool IsReadOnly
        {
            get { return (bool)base.GetValue(isreadonly); }
            set { base.SetValue(isreadonly, value); }
        }

        private void PasswordBox_PasswordChanged(object sender, RoutedEventArgs e)
        {
            Password = ea.Encrypt(pbxPassword.Password);
        }

        private void PasswordBox_Initialized(object sender, EventArgs e)
        {
            pbxPassword.Password = Password;
        }
    }
}
