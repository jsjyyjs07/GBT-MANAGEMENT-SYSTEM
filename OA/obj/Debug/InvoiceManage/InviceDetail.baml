   M S B A M L   `   `   `  ����R  NWpfCustomControlLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibraryWpfCustomControlLibrary  5   	    OA#   OA.InvoiceManage.InviceDetail   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   fPerformanceFunctionFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibrary     5   	   -   5          � Title$  InviceDetail��5   	   $	��600��6   $	��800��6+   $	��600��67   $	��800��6G   ���	#FFB8F8B8.��5      �  � RowDefinitions 5   
   �� 5      $��46 �6   �� 5	      $
��478* �6   �� 5
      $��40 �6   .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ dagInvoiceDetail��5         AlternatingRowBackground
 ��ح�   RowHeaderWidth$ 20Q�6R      CanUserAddRows .     AutoGenerateColumns .     VerticalGridLinesBrush �	#FF78E460   HorizontalGridLinesBrush �	#FF78E460$��1��5   [   	 � 	Resources	 5      )  #System.Windows.Controls.DataGridRow
 �� 
TargetType �� Property �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader:  4System.Windows.Controls.Primitives.DataGridRowHeader��%�   '        '  J     '  �     �� 5      "
  6   .�5      ��  � ��
 ����63   5      �� 5      "
  6   .�5      ��  � ��
 �W�.�63   5      �� 5      "
  6   .�5      ��  � ��
 ����63   5      5      ��5      �� 5       �� Color$ 	#FFF0F0F0��6"    �� Opacity$ 0Q�64      Columns 5      4  .System.Windows.Controls.DataGridCheckBoxColumn  5      ,  &System.Windows.Controls.DataGridColumn   Header$ 选择��6)   1  +System.Windows.Controls.DataGridBoundColumn   Binding 65   �� *
Selected+0  *System.Windows.Controls.DataGridTextColumn  5      $ 序号��6%      
IsReadOnly .  61   �� *RowID+6K     5      $ 发票序号��6%    .  63   �� *BillNo+6N     5       $ 客户��6%    .  61   �� *
Customer+ �� Mode$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�6�     5!      $ 付款方式��6%    .  63   �� *PaymentTerms+$ TwoWay=�$ PropertyChanged=�6�     5"      $ 电镀方式��6%    .  63   �� *ElectroplatingWay+$ TwoWay=�$ PropertyChanged=�6�     5#      $ 收货时间��6%    .  63   �� *ReceivingTime+$ TwoWay=� �� StringFormat$ {0:d}��$ PropertyChanged=�6�     5$      $ 出货时间��6%    .  63   �� *ShippingTime+$ TwoWay=�$ {0:d}��$ PropertyChanged=�6�     5%      $ 品名��6%    .  61   �� *Deseription+$ TwoWay=�$ PropertyChanged=�6�     5&      $ 颜色代码��6%    .  63   �� *	ColorID+$ TwoWay=�$ PropertyChanged=�6�     5'      $ 颜色��6%    .  61   �� *Color+$ TwoWay=�$ PropertyChanged=�6}     5(      $ 收货斤数��6%    .  63   �� *ReceivingQTY+$ TwoWay=�$ PropertyChanged=�6�     5)      $ 出货斤数��6%    .  63   �� *ShippingQTY+$ TwoWay=�$ PropertyChanged=�6�     5*      $ 个/斤��6%    .  62   �� *APerKilogram+$ TwoWay=�$ PropertyChanged=�6�     5+      $ 单价��6%    .  61   �� *Price+$ TwoWay=�$ PropertyChanged=�6}     5,      $ 数量��6%    .  61   �� *QTY+$ TwoWay=�$ PropertyChanged=�6{     5-      $ 金额��6%    .  61   �� *Amount+$ TwoWay=�$ PropertyChanged=�6~     5.      $ 工序代码��6%    .  63   �� *	ProcessID+$ TwoWay=�$ PropertyChanged=�6�     5/      $ 备注��6%    .  61   �� *Remark+$ TwoWay=�$ PropertyChanged=�6~     50      $ 状态��6%    .  61   �� *State+$ TwoWay=�$ PropertyChanged=�6}     51      $ 发票关联编号��6%    .    
Visibility$ 	Collapsed=�6i    65   �� *MasterInnerID+6i     52      $ 	发票号��6%    .  62   �� *MasterBillNo+6S     53      $ 	创建人��6%    .  62   �� *	Creater+6N     54      $ 创建日期��6%    .  63   �� *
CreateDate+6R     55      $ 	修改人��6%    .  62   �� *
Modifier+6O     56      $ 修改日期��6%    .  63   �� *ModifiedDate+6T   58      -	   'WpfCustomControlLibrary.ToolBarAdvanced	  59   
   -   5         	 Name$ 
tbaToolBar��59   .   $	��Top=�6B   $
��Auto��6Z    	  
IsReadOnly . 6g   �� 5:   
   -   5         ��Name$ btnSelectAll��5:      $��全选��6'   $��	0,5,250,9q�64   $��2��6G   ���	#FF00830C$
��Bold"�6�   $��Right=�6�   $��75��6�   ��5;      �� 5<      $ 	#FFDDDDDD��6"   $ 0Q�64   5>      �� 5?   
   -   5        $ btnSelectNone��5?      $��	全不选��6(   $��	0,5,170,9q�66   $��2��6I   ���	#FF00830C$
��Bold"�6�   $��Right=�6�   $��75��6�   ��5@      �� 5A      $ 	#FFDDDDDD��6"   $ 0Q�64   5C      �� 5D   
   -   5        $ 
btnConfirm��5D      $��确定��6%   $��0,5,90,9q�62   $��2��6D   ���	#FF00830C$
��Bold"�6�   $��Right=�6�   $��75��6�   ��5E      �� 5F      $ 	#FFDDDDDD��6"   $ 0Q�64   5H      �� 5I   
   -   5        $ 	btnCancel��5I      $��取消��6$   $��0,5,10,9q�61   $��2��6C   ���	#FF00830C$
��Bold"�6�   $��Right=�6�   $��75��6�   ��5J      �� 5K      $ 	#FFDDDDDD��6"   $ 0Q�64   5M      �� 5N   
   -   5         ��Name$ txtState��5N      $��10,4,682,10q�6$   $��2��69    �� TextWrapping$
 Wrap=�6F   $��0q�6Z   ���	#FF007E1D$��16(�6�    �� 
IsReadOnly . 
����  ���6�   �� *State+ �� ElementName$ 
tbaToolBar��$ TwoWay=�$ PropertyChanged=�.��5O   .   ��5P      �� 5Q      $ White��6"   $ 0Q�60   .��5R   "   5S      5T      5U      