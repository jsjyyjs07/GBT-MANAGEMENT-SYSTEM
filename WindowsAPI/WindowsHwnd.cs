using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Text;

namespace WindowsAPI
{
    public class WindowsHwnd
    {
        [DllImport("user32.dll")]
        private static extern bool SetForegroundWindow(IntPtr hWnd);

        [DllImport("user32.dll", EntryPoint = "FindWindow")]
        private extern static IntPtr FindWindow(string lpClassName, string lpWindowName);

        [DllImport("user32.dll", EntryPoint = "ShowWindow", CharSet = CharSet.Auto)]
        private static extern int ShowWindow(IntPtr hwnd, int nCmdShow);

        public const int WM_CLOSE = 0x10;

        [System.Runtime.InteropServices.DllImport("user32.dll", EntryPoint = "SendMessageA")]
        public static extern int SendMessage(IntPtr hwnd, int wMsg, int wParam, int lParam);

        //private static int SW_HIDE = 0;
        //private static int SW_SHOWNORMAL = 1;//激活并显示一个窗口。如果窗口被最小化或最大化，系统将其恢复到原来的尺寸和大小。应用程序在第一次显示窗口的时候应该指定此标志。
        //private static int SW_SHOWMINIMIZED = 2;//激活窗口并将其最小化。
        //private static int SW_SHOWMAXIMIZED = 3;//激活窗口并将其最大化。
        //private static int SW_MAXIMIZE = 3;//最大化指定的窗口。
        //private static int SW_SHOWNOACTIVATE = 4;//以窗口最近一次的大小和状态显示窗口。激活窗口仍然维持激活状态。
        //private static int SW_SHOW = 5;//在窗口原来的位置以原来的尺寸激活和显示窗口。
        //private static int SW_MINIMIZE = 6;//最小化指定的窗口并且激活在Z序中的下一个顶层窗口。
        //private static int SW_SHOWMINNOACTIVE = 7;//窗口最小化，激活窗口仍然维持激活状态。
        //private static  int SW_SHOWNA = 8;//以窗口原来的状态显示窗口。激活窗口仍然维持激活状态。
        private static  int SW_RESTORE = 9;//激活并显示窗口。如果窗口最小化或最大化，则系统将窗口恢复到原来的尺寸和位置。在恢复最小化窗口时，应用程序应该指定这个标志。

        /// <summary>
        /// 激活指定标题的窗体
        /// </summary>
        /// <param name="WindowsName">窗体名称</param>
        public static void ActionWindow(string WindowsName)
        {
            IntPtr ParenthWnd = new IntPtr(0);
            ParenthWnd = FindWindow(null, WindowsName);
            if (ParenthWnd != IntPtr.Zero)
            {
                ShowWindow(ParenthWnd, SW_RESTORE);
                SetForegroundWindow(ParenthWnd);
            }
        }

        public static void CloseWindow(string WindowsName)
        {
            IntPtr hwnd_win;
            hwnd_win = FindWindow(null, WindowsName);
            SendMessage(hwnd_win, WM_CLOSE, 0, 0);
        }
    }
}
