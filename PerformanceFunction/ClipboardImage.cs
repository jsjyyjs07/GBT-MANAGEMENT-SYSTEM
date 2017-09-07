using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Forms;
using System.Windows.Media.Imaging;

namespace WpfCustomControlLibrary
{
    public class ClipboardImage
    {
        /// <summary>
        /// 注册快捷键Ctrl+C，Ctrl+V
        /// </summary>
        /// <param name="hWnd">窗体</param>
        public void RegisterShortcuts(IntPtr hWnd)
        {
            //注册Ctrl+C快捷键
            UnsafeNativeMethods.RegisterHotKey(hWnd, 103, 2, 0x43);
            //注册Ctrl+V快捷键
            UnsafeNativeMethods.RegisterHotKey(hWnd, 104, 2, 0x56);
        }

        /// <summary>
        /// 释放快捷键Ctrl+C，Ctrl+V
        /// </summary>
        /// <param name="hWnd">窗体</param>
        public void UnregisterShortcuts(IntPtr hWnd)
        {
            //释放Ctrl+C快捷键
            UnsafeNativeMethods.UnregisterHotKey(hWnd, 103);
            //释放Ctrl+V快捷键
            UnsafeNativeMethods.UnregisterHotKey(hWnd, 104);
        }

        /// <summary>
        /// 粘贴图片到PictureBox,操作方式：按住Ctrl+V，鼠标点击PictureBox控件完成粘贴
        /// </summary>
        /// <param name="pbs">PictureBox控件组</param>
        public byte[] PastePictureToPictureBox(params BitmapSource[] img)
        {
            try
            {
                byte[] date = null;
                int CurrentImg = 0;
                foreach (BitmapSource Img in img)
                {
                    if (Clipboard.ContainsImage())
                    {
                        img[CurrentImg] = Clipboard.GetImage();
                        //date = GetByteByImage(Clipboard.GetImage());
                    }
                    CurrentImg++;
                }
                return date;
            }
            catch
            {
                return null;
            }
        }

        /// <summary>
        /// 从PictureBox复制图片，操作方式：按住Ctrl+C，鼠标点击PictureBox控件完成复制
        /// </summary>
        /// <param name="pbs">PictureBox控件组</param>
        public void CopyPictureToPictureBox(params BitmapSource[] img)
        {
            try
            {
                foreach (BitmapSource Img in img)
                {
                    if (Img != null)
                    {
                        Clipboard.SetImage(Img);
                    }
                }
            }
            catch
            { }
        }

        /// <summary>
        /// Image转二进制
        /// </summary>
        /// <param name="img"></param>
        /// <returns></returns>
        public byte[] GetByteByImage(Image img)
        {
            try
            {
                byte[] bt = null;
                if (!img.Equals(null))
                {
                    using (MemoryStream mostream = new MemoryStream())
                    {
                        Bitmap bmp = new Bitmap(img);
                        bmp.Save(mostream, System.Drawing.Imaging.ImageFormat.Bmp);//将图像以指定的格式存入缓存内存流
                        bt = new byte[mostream.Length];
                        mostream.Position = 0;//设置留的初始位置
                        mostream.Read(bt, 0, Convert.ToInt32(bt.Length));
                    }
                }
                return bt;
            }
            catch
            { 
                return null; 
            }
        }

        /// <summary>
        /// 二进制转Image
        /// </summary>
        /// <param name="bytes"></param>
        /// <returns></returns>
        public Image GetImageByBytes(byte[] bytes)
        {
            try
            {
                Image photo = null;
                using (MemoryStream ms = new MemoryStream(bytes))
                {
                    ms.Write(bytes, 0, bytes.Length);
                    photo = Image.FromStream(ms, true);
                }
                return photo;
            }
            catch
            {
                return null;
            }
        }
    }
}
