using Attribute;
using System;
using System.Globalization;
using System.Windows.Data;
using BusinessLogicLevel;

namespace DataConvert
{

    [ValueConversion(typeof(string), typeof(string))]
    public class OperateStaffConvert : IValueConverter
    {
        GeneralBasicQueryBLL gbqb = new GeneralBasicQueryBLL();

        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return LoginAttribute.UserName;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            return LoginAttribute.UserID;
        }
    }
}
