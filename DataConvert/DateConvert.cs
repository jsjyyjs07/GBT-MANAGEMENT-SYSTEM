using System;
using System.Globalization;
using System.Windows.Data;

namespace DataConvert
{
    [ValueConversion(typeof(DateTime), typeof(string))]
    public class DateConvert : IValueConverter
    {
        public object Convert(object value, Type targetType, object parameter, CultureInfo culture)
        {
            string date = ((DateTime)value).ToString("yyyy-MM-dd", culture);
            return date;
        }

        public object ConvertBack(object value, Type targetType, object parameter, CultureInfo culture)
        {
            DateTime dt = (DateTime)value;
            return dt;
        }
    }
}
