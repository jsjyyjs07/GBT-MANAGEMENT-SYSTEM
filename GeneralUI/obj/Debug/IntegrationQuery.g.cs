﻿#pragma checksum "..\..\IntegrationQuery.xaml" "{406ea660-64cf-4c82-b6f0-42d48172a799}" "A614E86CDA16106BD3A56F4ACFE88A81"
//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

using System;
using System.Diagnostics;
using System.Windows;
using System.Windows.Automation;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Ink;
using System.Windows.Input;
using System.Windows.Markup;
using System.Windows.Media;
using System.Windows.Media.Animation;
using System.Windows.Media.Effects;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Media.TextFormatting;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Shell;
using WpfCustomControlLibrary;


namespace GeneralUI {
    
    
    /// <summary>
    /// IntegrationQuery
    /// </summary>
    public partial class IntegrationQuery : System.Windows.Window, System.Windows.Markup.IComponentConnector {
        
        
        #line 28 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.ListBox lstSearchSolution;
        
        #line default
        #line hidden
        
        
        #line 37 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGrid dgCondition;
        
        #line default
        #line hidden
        
        
        #line 42 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridTextColumn dgtxtLeft;
        
        #line default
        #line hidden
        
        
        #line 43 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridComboBoxColumn dgcobColumns;
        
        #line default
        #line hidden
        
        
        #line 44 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridComboBoxColumn dgcobOperators;
        
        #line default
        #line hidden
        
        
        #line 46 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal System.Windows.Controls.DataGridTextColumn dgtxtRight;
        
        #line default
        #line hidden
        
        
        #line 50 "..\..\IntegrationQuery.xaml"
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1823:AvoidUnusedPrivateFields")]
        internal WpfCustomControlLibrary.ToolBarAdvanced tbaToolBar;
        
        #line default
        #line hidden
        
        private bool _contentLoaded;
        
        /// <summary>
        /// InitializeComponent
        /// </summary>
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        public void InitializeComponent() {
            if (_contentLoaded) {
                return;
            }
            _contentLoaded = true;
            System.Uri resourceLocater = new System.Uri("/GeneralUI;component/integrationquery.xaml", System.UriKind.Relative);
            
            #line 1 "..\..\IntegrationQuery.xaml"
            System.Windows.Application.LoadComponent(this, resourceLocater);
            
            #line default
            #line hidden
        }
        
        [System.Diagnostics.DebuggerNonUserCodeAttribute()]
        [System.CodeDom.Compiler.GeneratedCodeAttribute("PresentationBuildTasks", "4.0.0.0")]
        [System.ComponentModel.EditorBrowsableAttribute(System.ComponentModel.EditorBrowsableState.Never)]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Design", "CA1033:InterfaceMethodsShouldBeCallableByChildTypes")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Maintainability", "CA1502:AvoidExcessiveComplexity")]
        [System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1800:DoNotCastUnnecessarily")]
        void System.Windows.Markup.IComponentConnector.Connect(int connectionId, object target) {
            switch (connectionId)
            {
            case 1:
            
            #line 5 "..\..\IntegrationQuery.xaml"
            ((GeneralUI.IntegrationQuery)(target)).Loaded += new System.Windows.RoutedEventHandler(this.Window_Loaded);
            
            #line default
            #line hidden
            return;
            case 2:
            this.lstSearchSolution = ((System.Windows.Controls.ListBox)(target));
            return;
            case 3:
            this.dgCondition = ((System.Windows.Controls.DataGrid)(target));
            return;
            case 4:
            this.dgtxtLeft = ((System.Windows.Controls.DataGridTextColumn)(target));
            return;
            case 5:
            this.dgcobColumns = ((System.Windows.Controls.DataGridComboBoxColumn)(target));
            return;
            case 6:
            this.dgcobOperators = ((System.Windows.Controls.DataGridComboBoxColumn)(target));
            return;
            case 7:
            this.dgtxtRight = ((System.Windows.Controls.DataGridTextColumn)(target));
            return;
            case 8:
            this.tbaToolBar = ((WpfCustomControlLibrary.ToolBarAdvanced)(target));
            return;
            }
            this._contentLoaded = true;
        }
    }
}

