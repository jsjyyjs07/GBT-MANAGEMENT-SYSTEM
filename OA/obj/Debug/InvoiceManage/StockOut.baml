   M S B A M L   `   `   `  ����R  NWpfCustomControlLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibraryWpfCustomControlLibrary  5   	    OA   OA.InvoiceManage.StockOut   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   fPerformanceFunctionFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibrary     5   	   -   5          � Title$  Invoice��5   	   $	��600��6   $	��800��6&   $	��600��62   $	��800��6B   ���	#FFB8F8B8.��5      �  � ColumnDefinitions 5   
   �� 5      $	��120 �6   �� 5	      �� 5
      $	��120 �6   �� 5      �� 5      $	��120 �6   �� 5       � RowDefinitions 5   
   �� 5      $��46 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $	��16* �6   �� 5      $
��393* �6   �� 5      $��40 �6   .+�5   
   -   'WpfCustomControlLibrary.ToolBarAdvanced  -   5          Name$ 
tbaToolBar��5   .   $
��Auto��6B   $��0,0,0,1q�6O   $��6��6`      
IsReadOnly .    BillNo 6�   ��  �� ElementName$ 	txtBillNo�� �� Path$
 Text��� 5   
   -   5         ��Name$ 	lblBillNo��5      $��出库单号��6#   $��16(�62   $��1��6@   �� 5   
   -   5        	 ��Name$	 	txtBillNo��5      $��
10,4,10,10q�6%   $��1��69   
 �� TextWrapping$

 Wrap=�6F   $��0,0,0,2q�6Z   ���	#FF007E1D$��16(�6�    �� 
IsReadOnly . $��1��5      ��5   �   �� $ BillNo� �� Mode$ OneWay=�.��5   ,   ��5      �� 5       �� Color$ White��6"    �� Opacity$ 0Q�60   .��5   "   5      �� 5   
   -   5        $ lblBillDate��5      $��出库日期��6%   $��16(�64   $��2��6B   $��1��6R   �� 5    
   -   5        $	 txtBillDate��5       $��
10,4,10,10q�6'   $��1��6;   $

 Wrap=�6H   $��0,0,0,2q�6\   ���	#FF007E1D$��16(�6�    . $��3��5!      ��5    �   �� $ BillDate� �� StringFormat$ {0:d}��$ TwoWay=� �� UpdateSourceTrigger$ PropertyChanged=�.��5!   ,   ��5"      �� 5#      $ White��6"   $ 0Q�60   .��5$   "   5%      �� 5'   
   $��6��6   $��4��6)   ���	#FF007E1D��5(      �� 5)      $ White��6"   $ 0Q�60   .@�5+      �� $��发票明细��6   ��5,      �� 5-       �� EndPoint$	 0,1&�6*    �� 
StartPoint$	 0,0&�69   .��5.      �  � Color$ 	#00F0F0F0��6'    � Offset$ 0Q�69   � 5/      $ 	#00E5E5E5��6'   $ 1Q�69   50      .��52      �  53      �� 54      .+�56      &   System.Windows.Controls.DataGrid  -   5          Name$ dagStockOutDetail��56         AlternatingRowBackground
 ��ح�   CanUserAddRows .    RowHeaderWidth$ 20Q�57         AutoGenerateColumns .     VerticalGridLinesBrush �	#FF78E460   HorizontalGridLinesBrush �	#FF78E460   
IsReadOnly 56   :   �� $ 
IsReadOnly�$ 
tbaToolBar�� � 	Resources 58      )  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property  �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader:  4System.Windows.Controls.Primitives.DataGridRowHeader��%�   '        '  J     '  �     �� 59      "  6$   .�5:   "   ��  � ��
  ����6?   5;      �� 5<      "  6$   .�5=   "   ��  � ��
  �W�.�6?   5>      �� 5?      "  6$   .�5@   "   ��  � ��
  ����6?   5A      5B      ��5C      �� 5D      $ 	#FFF0F0F0��6.   $ 0Q�6@   ! � ContextMenu! 5F      �� 5G      -   5        $��ctmMenu��5G   *   " �� 	StaysOpen" . .@�5H   "   m� -	   5        $��	删除行��5H   +   6Q   5I      #   Columns# 5K      0  *System.Windows.Controls.DataGridTextColumn  5L      ,  &System.Windows.Controls.DataGridColumn$   Header$$ 序号��61   %   
IsReadOnly% . 1  +System.Windows.Controls.DataGridBoundColumn&   Binding& 6=   �� $ RowID�6\     5M      $$ 发票序号��61   % . & 6?   �� $ BillNo�6_     5N      $$ 货物名称��61   & 6?   �� $ Deseription�$ TwoWay=�$ PropertyChanged=�  5O      $$ 规格��61   & 6=   �� $ 
Dimensions�$ TwoWay=�$ PropertyChanged=�  5P      $$ 单位��61   & 6=   �� $
 Unit�$ TwoWay=�$ PropertyChanged=�  5Q      $$ 单价��61   & 6=   �� $ Price�$ TwoWay=�$ PropertyChanged=�  5R      $$ 出库数量��61   & 6?   �� $	 QTY�$ TwoWay=�$ PropertyChanged=�  5S      $$ 金额��61   % . & 6=   �� $ Amount�$ TwoWay=�$ PropertyChanged=�6�     5T      $$ 备注��61   & 6=   �� $ Remark�$ TwoWay=�$ PropertyChanged=�  5U      $$ 状态��61   % . & 6=   �� $ State�$ TwoWay=�$ PropertyChanged=�6�     5V      $$ 出库单号��61   % . & 6?   �� $ MasterBillNo�6e     5W      $$ 	创建人��61   % . & 6>   �� $ Creater�6_     5X      $$ 创建日期��61   % . & 6?   �� $ 
CreateDate�6c     5Y      $$ 	修改人��61   % . & 6>   �� $ Modifier�6`     5Z      $$ 修改日期��61   % . & 6?   �� $ ModifiedDate�6e   5\      5]      5^      �� 5_      $��管理中心��6   ���	#00ACACAC��5`      �� 5a      $	 0,1&�6*   $	 0,0&�69   .��5b      � $ 	#00F0F0F0��6'   $ 0Q�69   � 5c      $ 	#00E5E5E5��6'   $ 1Q�69   5d      .��5f      � $��0,0,0,0q�6    5g      �� 5h      $��40 �6(   �� 5i      $��40 �6(   �� 5j      $��40 �6(   �� 5k      $��40 �6(   �� 5l       5n      �� 5o      $	��120 �6+   �� 5p      �� 5q      $	��120 �6+   �� 5r      ��5t      �� 5u      $ 	#FFE5E5E5��6*   $ 0Q�6<   .+�5w      �� -
   5        $ 
lblCreater��5w      $��	创建人��60   $��16(�6>   $��0,4,0,0q�6L   �� 5x      -   5        $ lblModifier��5x      $��	修改人��61   $��16(�6?   $��1��6M   �� 5y      -   5        $ lblCreaterDate��5y      $��创建日期��64   $��16(�6C   $��2��6Q   �� 5z      -   5        $ lblModifiedDate��5z      $��修改日期��65   $��16(�6D   $��1��6R   $��2��6_   �� 5{      -   5        $	 
txtCreater��5{      $��1��62   $��	10,4,7,10q�6B   $

 Wrap=�6U   $��0,0,0,2q�6i   ���	#FF007E1D$��16(�6�    . ��6�   �� $ Creater�$ OneWay=�.��5|      ��5}      �� 5~      $ White��6.   $ 0Q�6<   .��5   .   5�      �� 5�      -   5        $	 txtModifierDate��5�      $��1��67   $��	10,4,7,10q�6G   $

 Wrap=�6Z   $��0,0,0,2q�6n   ���	#FF007E1D$��16(�6�   $��1��6�    . ��6�   �� $ Modifier�$ OneWay=�.��5�      ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $	 txtCreaterDate��5�      $��3��66   $��	10,4,7,10q�6F   $

 Wrap=�6Y   $��0,0,0,2q�6m   ���	#FF007E1D$��16(�6�    . ��6�   �� $ 
CreateDate�$ OneWay=�.��5�      ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $	 txtModifiedDate��5�      $��3��67   $��	10,4,7,10q�6G   $

 Wrap=�6Z   $��0,0,0,2q�6n   ���	#FF007E1D$��16(�6�   $��1��6�    . ��6�   �� $ ModifiedDate�$ OneWay=�.��5�      ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ 
lblAuditor��5�      $��	审核人��60   $��16(�6>   $��2��6L   �� 5�      -   5        $	 
txtAuditor��5�      $��1��62   $��	10,4,7,10q�6B   $

 Wrap=�6U   $��0,0,0,2q�6i   ���	#FF007E1D$��16(�6�   $��2��6�    . ��6�   �� $ Auditor�$ OneWay=�.��5�      ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ lblAuditDate��5�      $��审核日期��62   $��16(�6A   $��2��6O   $��2��6\   �� 5�      -   5        $	 txtAuditDate��5�      $��3��64   $��	10,4,7,10q�6D   $

 Wrap=�6W   $��0,0,0,2q�6k   ���	#FF007E1D$��16(�6�   $��2��6�    . ��6�   �� $ 	AuditDate�$ OneWay=�.��5�      ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ 
lblInvalid��5�      $��	作废人��60   $��16(�6>   $��3��6L   �� 5�      -   5        $	 
txtInvalid��5�      $��1��62   $��	10,4,7,10q�6B   $

 Wrap=�6U   $��0,0,0,2q�6i   ���	#FF007E1D$��16(�6�   $��3��6�    . ��6�   �� $ Invalid�$ OneWay=�.��5�   (   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ lblDateObsolete��5�      $��作废日期��65   $��16(�6D   $��3��6R   $��2��6_   �� 5�      -   5        $	 txtDateObsolete��5�      $��3��67   $��	10,4,7,10q�6G   $

 Wrap=�6Z   $��0,0,0,2q�6n   ���	#FF007E1D$��16(�6�   $��3��6�    . ��6�   �� $ DateObsolete�$ OneWay=�.��5�   (   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      5�      5�      5�      �� 5�   
   -   5        $	 txtState��5�      $��
10,4,10,10q�6$   $��5��68   $

 Wrap=�6E   $��0q�6Y   ���	#FF007E1D$��16(�6�    . 
����  ���6�   �� *State+$ 
tbaToolBar��$ TwoWay=�$ PropertyChanged=�.��5�   .   ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      �� 5�   
   -   5        $	 
txtMessage��5�      $��
90,4,10,10q�6&   $��5��6:   $

 Wrap=�6G   $��0q�6[   ���	#FF007E1D$��16(�6�    . 
����  �$��1��5�   .   $��5��6>   ��5�   �   �� *	Message+$ 
tbaToolBar��$ TwoWay=�$ PropertyChanged=�.��5�   R   ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      �� 5�   
   -   5        $ 	lblRemark��5�      $��备注��6#   $��16(�60   $��2��6>   �� 5�   
   -   5        $	 	txtRemark��5�      $��
10,4,10,10q�6%   $��2��69   $

 Wrap=�6F   $��0,0,0,2q�6Z   ���	#FF007E1D$��16(�6�   $��1��5�   D   $��5��6T   ��5�   �   �� *Remark+$ TwoWay=�$ PropertyChanged=� 5�   
   �� *
IsReadOnly+$ 
tbaToolBar��.��6h   ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      5�      5�      