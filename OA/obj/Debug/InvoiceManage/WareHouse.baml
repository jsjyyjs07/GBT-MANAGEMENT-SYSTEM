   M S B A M L   `   `   `  ����R  NWpfCustomControlLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibraryWpfCustomControlLibrary  5   	    OA    OA.InvoiceManage.WareHouse   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   fPerformanceFunctionFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibrary     5   	   -   5          � Title$  	WareHouse��5   	   $	��600��6   $	��800��6(   $	��600��64   $	��800��6D   ���	#FFB8F8B8.��5      �  � ColumnDefinitions 5   
   �� 5       � RowDefinitions 5
   
   �� 5      $��46 �6   �� 5      $��40 �6   �� 5      �� 5      $��40 �6   .+�5   
   -   'WpfCustomControlLibrary.ToolBarAdvanced  -   5          Name$ 
tbaToolBar��5   .   $	��Top=�6B   $
��Auto��6Z   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dagWareHouse��5         
IsReadOnly .    AlternatingRowBackground
 ��ح�   CanUserAddRows .    RowHeaderWidth$ 20Q�5      	   AutoGenerateColumns	 .  
   VerticalGridLinesBrush
 �	#FF78E460   HorizontalGridLinesBrush �	#FF78E460$��2��6�    � 	Resources 5      )  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader:  4System.Windows.Controls.Primitives.DataGridRowHeader��%�   '        '  J     '  �     �� 5      "  6   .�5      ��  � ��
 ����63   5      �� 5      "  6   .�5      ��  � ��
 �W�.�63   5      �� 5      "  6   .�5      ��  � ��
 ����63   5      5      ��5       �� 5!       �� Color$ 	#FFF0F0F0��6"    �� Opacity$ 0Q�64      Columns 5#      0  *System.Windows.Controls.DataGridTextColumn  5$      ,  &System.Windows.Controls.DataGridColumn   Header$ 入库序号��6%      
IsReadOnly . 1  +System.Windows.Controls.DataGridBoundColumn   Binding 63   ��  �� Path$ RBillNo�6T     5%      $ 出库序号��6%    .  63   �� $ CBillNo�6T     5&      $ 货物名称��6%    .  63   �� $ Deseription�6X     5'      $ 规格��6%    .  61   �� $ 
Dimensions�6U     5(      $ 单位��6%    .  61   �� $
 Unit�6O     5)      $ 入库数量��6%    .  63   �� $
 RQTY�6Q     5*      $ 出库数量��6%    .  63   �� $
 CQTY�6Q     5+      $ 库存数量��6%    .  63   �� $ 	Inventory�6V     5,      $ 备注��6%    .  61   �� $ Remark�6Q   5.      5/      50      