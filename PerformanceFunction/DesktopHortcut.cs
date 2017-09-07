using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using IWshRuntimeLibrary;

namespace WpfCustomControlLibrary
{
    public class DesktopHortcut
    {
        public static void CreateDesktopLnk(string AppPath)
        {
            string DesktopPath = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Desktop);//得到桌面文件夹 
            IWshRuntimeLibrary.WshShell shell = new IWshRuntimeLibrary.WshShell();

            IWshRuntimeLibrary.IWshShortcut shortcut = (IWshRuntimeLibrary.IWshShortcut)shell.CreateShortcut(DesktopPath + "\\GBT.lnk");
            shortcut.TargetPath = AppPath + "GBT.exe";
            shortcut.Arguments = "";//参数
            shortcut.Description = "http://gamelab.1111";
            shortcut.WorkingDirectory = System.Environment.CurrentDirectory;//程序所在文件夹，在快捷方式图标点击右键可以看到此属性
            shortcut.IconLocation = AppPath + "GBT.exe,0";//图标
            shortcut.Hotkey = "";//热键
            shortcut.WindowStyle = 1;
            shortcut.Save();
        }
    }
}
