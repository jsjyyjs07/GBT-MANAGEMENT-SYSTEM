   M S B A M L   `   `   `  ����R  NWpfCustomControlLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibraryWpfCustomControlLibrary  5   	    	GeneralUI    GeneralUI.ModuleBasicQuery   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   jWpfCustomControlLibraryFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibrary     5   	   -   5          �Name$  winModuleBasic��5   	    � Title$ ModuleBasicQuery��5   	   $	��600��6"   $	��800��6/   $	��800��6;   $	��600��6J    � Icon$ 
..\GBT.ico��6Z   ��5      �� 5   
    �� Color$ 	#FFB8F8B8��6   .��5	      �  � RowDefinitions 5
   
   �� 5      $��46 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      �� 5      $��40 �6    � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      .+�5   
   &   System.Windows.Controls.DataGrid  -   5          Name$ 	dagSource��5      $��1��6&   $��1��66   $��7��6C      
IsReadOnly .    AlternatingRowBackground
 ��ح�	   RowHeaderWidth$	 20Q�5   f   
   FrozenColumnCount$
 2��6z   $��5,0,0,0q�6�    � 	Resources 5      )  #System.Windows.Controls.DataGridRow �� 
TargetType �� Property �� Value=  7System.Windows.Controls.Primitives.DataGridColumnHeader:  4System.Windows.Controls.Primitives.DataGridRowHeader��%�   '        '  J     '  �     �� 5      "  6   .�5      ��  � ��
 ����6H   5      �� 5      "  6   .�5       ��  � ��
 �W�.�6F   5!      �� 5"      "  6   .�5#      ��  � ��
 ����6H   5$      5&         VerticalGridLinesBrush 5'      �� 5(      $ 	#FF78E460��6"      HorizontalGridLinesBrush 5*      �� 5+      $ 	#FF78E460��6"   ��5-      �� 5.      $ 	#FFF0F0F0��6"    �� Opacity$ 0Q�64   50      a� 51   
   -   5         a�Name$ 
tbpToolBar��51      $��2��6+   .+�52      c� -   5         c�Name$ 	tbToolBar��52      $��45��6)   $��0,0,0,1q�65   ���	#FF6691CE$��0,0,0,1q�6_   ��53      �� 54      $ 	#FFEEF5FD��6&   $ 0Q�68   .@�56      �� -   5         ��Name$ 	btnSearch��56      $��45��6,   $��0,0,0,-5q�68   $��45��6J   .��57      �� .+�58      �� -   5         ��Name$ 	imgSearch��58       $��25��63   $��35��6?   $
��Fill=�6J    � ToolTip$ Search��6Y   �� 59      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �查询6�   5:      5;      �� 5<      -   5        $ btnAdd��5<      $��45��6)   $��0,0,0,-5q�65   $��45��6G   .��5=      �� .+�5>      �� -   5        $ imgAdd��5>       $��25��60   $��35��6<   $
��Fill=�6G   $	 Add��6V   �� 5?      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �新增6�   5@      5A      �� 5B      -	   5        $ btnCopy��5B      $��45��6*   $��0,0,0,-5q�66   $��45��6H   {�.  .��5C      �� .+�5D      �� -
   5        $ imgCopy��5D       $��25��61   $��35��6=   $
��Fill=�6H   $
 Copy��6W   �� 5E      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �复制6�   5F      5G      �� 5H      -   5        $ 	btnModify��5H      $��45��6,   $��0,0,0,-5q�68   $��45��6J   {�.  .��5I      �� .+�5J      �� -   5        $ 	imgModify��5J       $��25��63   $��35��6?   $
��Fill=�6J   $ Modify��6Y   �� 5K      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �修改6�   5L      5M      �� 5N      -   5        $ 	btnDelete��5N      $��45��6,   $��0,0,0,-5q�68   $��45��6J   {�.  .��5O      �� .+�5P      �� -   5        $ imgDel��5P       $��25��60   $��35��6<   $
��Fill=�6G   $ Delete��6V   �� 5Q      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �删除6�   5R      5S      �� 5T      -   5        $ btnLayIn��5T      $��0,0,0,-5q�6+   $��45��6=   $��Stretch=�6H   .��5U      �� .+�5V      �� -   5        $ imgLayIn��5V       $��35��62   $��25��6=   $
��Fill=�6I   $ Lay in��6X   �� 5W      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �导入6�   5X      5Y      �� 5Z      -   5        $ 	btnExport��5Z      $��0,0,0,-5q�6,   $��45��6>   $��Stretch=�6I   .��5[      �� .+�5\      �� -   5        $ 	imgExport��5\       $��25��63   $��35��6?   $
��Fill=�6J   $ Export��6Y   �� 5]      $��Center=�6$   $��Center=�6A   $��11(�6\   $��15��6j   
��� � �导出6�   5^      5_      5`      5a      �� 5b   
   -   5         ��Name$ 	lblObject��5b      $��项目��6#   $
��Left=�60   $��10,8,0,0q�6K   $��2��6]   $	��Top=�6j   $
��Bold"�6�   �� 5c   
   -   5         ��Name$ 	cobObject��5c      $
��Left=�6&   $��	70,10,0,0q�6A   $��2��6T   $	��Top=�6a   $	��120��6y   ��5d      �� 5e       �� EndPoint$	 0,1&�6&    �� 
StartPoint$	 0,0&�65   .��5f      �  � Color$ 	#FFF0F0F0��6#    � Offset$ 0Q�65   � 5g      $ 	#FF78E460��6#   $ 1Q�65   5h      5j      �� 5k   
   -   5        $ lblOperator��5k      $��	运算符��6%   $
��Left=�63   $��10,8,0,0q�6N   $��3��6`   $	��Top=�6m   $
��Bold"�6�   �� 5l   
   -   5        $ cobOperator��5l      $
��Left=�6(   $��	70,10,0,0q�6C   $��3��6V   $	��Top=�6c   $	��120��6{   ��5m      �� 5n      $	 0,1&�6&   $	 0,0&�65   .��5o      � $ 	#FFF0F0F0��6#   $ 0Q�65   � 5p      $ 	#FF78E460��6#   $ 1Q�65   5q      5s      �� 5t   
   -   5        $ lblValue��5t      $��内容��6"   $
��Left=�6/   $��10,8,0,0q�6J   $��4��6\   $	��Top=�6i   $
��Bold"�6�   �� 5u   
   -   5         ��Name$ txtValue��5u      $
��Left=�6$   $��23��6?   $��	70,10,0,0q�6K   $��4��6^    �� TextWrapping$
 Wrap=�6k   $	��Top=�6   $	��120��6�   $��0,0,0,1q�6�   
���   �.��6�   ��5v      �� 5w      $ White��6"   $ 0Q�60   .��5x   "   5y      �� 5z   
   $��查询��6   $��1��6   $	��200��6*   $
��Bold"�66   $��20(�6H   $��40��6V   $��Center=�6b   $��Center=�6�   $��0q�6�   
���   �6�   �� 5{   
   -   5        $ btnQuery��5{      $��查询��6#   $
��Left=�60   $��	10,10,0,0q�6K   $��6��6^   $	��Top=�6k   $��80��6�   $��22��6�   $��0q�6�   $
��Bold"�6�   $��14(�6�   ��5|      
� 5}      .��5~      � $ 	#FF09C53C��6#   � 5      $ 	#FF0BC53D��6#   $ 1Q�65   � 5�      $ 	#FF7CF99D��6#   $	 0.5Q�65   5�      5�      �� 5�   
   -   5        $ 	btnCancel��5�      $��取消��6$   $
��Left=�61   $��
110,10,0,0q�6L   $��6��6`   $	��Top=�6m   $��80��6�   $��0q�6�   $��22��6�   $
��Bold"�6�   $��14(�6�   ��5�      
� 5�      .��5�      � $ 	#FF09C53C��6#   � 5�      $ 	#FF09C53C��6#   $ 1Q�65   � 5�      $ 	#FF7CF99D��6#   $	 0.5Q�65   5�      5�      (  "System.Windows.Controls.DatePicker  5�   
   -   5          Name$ 
dprDateTwo��5�      $
��Left=�6)   $��	70,10,0,0q�6D   $��5��6W   $	��Top=�6d   $	��120��6|   ���	#FF78E4606�     5�   
   -   5        $ 
dprDateOne��5�      $
��Left=�6)   $��	70,10,0,0q�6D   $��4��6W   $	��Top=�6d   $	��120��6|   ���	#FF78E4606�   �� 5�   
   -   5          ��Name$  chbValue��5�      $�� ��6%   $
��Left=�60   $��	70,15,0,0q�6K   $��4��6^   $	��Top=�6k   �� 5�   
   -   5        ! ��Name$! stbStats��5�      $��8��6&   ���	#FF6691CE$��0,1,0,0q�6K   $��2��6e   ��5�      �� 5�      $ 	#FFF1EDED��6"   $ 0Q�64   .@�5�      �� -   5        $ txtStatsValue��5�      $��23��6-   $
 Wrap=�69   $	��198��6M   $��0q�6Y   " �� 
IsReadOnly" . .��6   ��5�      �� 5�      $ White��6&   $ 0Q�64   .��5�   &   5�      �� 5�      -    5        $ txtStatsCount��5�      $��23��6-   $
 Wrap=�69   $	��148��6M   $��0q�6Y   " . 
����  �.��6�   ��5�      �� 5�      $ White��6&   $ 0Q�64   .��5�   &   5�      5�      �� 5�   
   -!   5        $ lblInner��5�      $	��至��6"   $
��Left=�6.   $��10,8,0,0q�6I   $��5��6[   $	��Top=�6h   $
��Bold"�6�   5�      5�      