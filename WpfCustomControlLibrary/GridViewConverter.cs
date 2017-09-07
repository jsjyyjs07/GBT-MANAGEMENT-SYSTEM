using System;
using System.Windows;
using System.Windows.Data;
using System.Windows.Media;

namespace WpfCustomControlLibrary
{
    public class GridViewConverter : IValueConverter
    {
        public object Convert(object Value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            LinearGradientBrush lineargrabru = new LinearGradientBrush();
            lineargrabru.StartPoint = new Point(0.5, 0);
            lineargrabru.EndPoint = new Point(0.5, 1);
            lineargrabru.GradientStops.Add(new GradientStop(Colors.LightGreen,0));
            lineargrabru.GradientStops.Add(new GradientStop(Colors.LawnGreen,0.5));
            lineargrabru.GradientStops.Add(new GradientStop(Colors.LightBlue,1));
            return lineargrabru;
        }

        public object ConvertBack(object Value, Type targetType, object parameter, System.Globalization.CultureInfo culture)
        {
            throw new NotImplementedException();
        }
    }
}
