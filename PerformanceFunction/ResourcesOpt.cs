using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Windows.Media;

namespace WpfCustomControlLibrary
{
    public class ResourcesOpt
    {
        /// <summary>
        /// 获取资源中的图片
        /// </summary>
        /// <param name="bitmap">图片的二进制数据</param>
        /// <param name="imageformat">图片的类型</param>
        /// <returns>图片数据源</returns>
        public ImageSource GetResources(Bitmap bitmap,ImageFormat imageformat)
        {
            MemoryStream memory = new MemoryStream();
            bitmap.Save(memory, System.Drawing.Imaging.ImageFormat.Png);
            ImageSourceConverter converter = new ImageSourceConverter();
            ImageSource source = (ImageSource)converter.ConvertFrom(memory);
            return source;
        }

        /// <summary>
        /// 获取资源中的图标
        /// </summary>
        /// <param name="icon">图标的二进制数据</param>
        /// <returns></returns>
        public ImageSource GetResources(Icon icon)
        {
            MemoryStream memory = new MemoryStream();
            icon.Save(memory);
            ImageSourceConverter converter = new ImageSourceConverter();
            ImageSource source = (ImageSource)converter.ConvertFrom(memory);
            return source;
        }
    }
}
