   M S B A M L   `   `   `  ����F  BDataConvert, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null>.clr-namespace:DataConvert;assembly=DataConvertDataConvert  5   	   R NWpfCustomControlLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibraryWpfCustomControlLibrary 5   	    Test   Test.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   >cvt.clr-namespace:DataConvert;assembly=DataConvert     5   	   fPerformanceFunctionFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibrary     5   	   -   5          �Name$  winTest��5       � Title$ 
MainWindow��6	   $��592.067��6-   $��801.119��6>   ���	#FFB8F8B8 � 	Resources 5         DataConvert.DateConvert   DateConvert��%   &	          5   
   60   5	      .��5
      �  � ColumnDefinitions 5   
   �� 5      $	��200 �6   �� 5      $	��200 �6   �� 5       � RowDefinitions 5   
   �� 5      $	��145 �6   �� 5      $	��175 �6   �� 5      $	��200 �6   �� 5      .+�5   
   �� -   5         ��Name$ cobTest1��5      $
��Left=�6%   $��	12,10,0,0q�6@   $	��Top=�6S   $	��120��6k   $��22��6w   �� 5   
   -   5        $ cobTest2��5      $
��Left=�6%   $��
137,10,0,0q�6@   $	��Top=�6T   $	��120��5       �� 
IsReadOnly .   �� 
IsEditable . $��2��65   $��22��6I   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ dagTest��5      $��10,37,10,10q�6$   $��3��69   )  #WpfCustomControlLibrary.GBTComboBox  5   
   -   5        	  Name$	 gbtComboBox��5   *   $
��Left=�6?   $��	70,10,0,0q�6Z   $	��Top=�6m   $	��120��6�   $��22��6�   $��1��5   V   
   SelectedValuePath
 6*   ��  �� Path$ Customer�6V     5   
   -   5        $ 
dgTestSave��5      $��10,10,12,10q�6'   $��2��6<   $��3��6I      Columns 5      4  .System.Windows.Controls.DataGridComboBoxColumn  5      -   5        cobCustomer��,  &System.Windows.Controls.DataGridColumn   Header$ 客户��5   >      SelectedValueBinding 6J   �� $ Customer�5!      �� 5"   
   -   5         ��Name$ tbnSave��5"      $��保存��6"   $��	0,10,10,0q�6/   $��3��6B   $	��Top=�6O   $��Right=�6g   $��75��6�   {�.  $��2��6�   $��20��6�   �� 5#   
   -	   5        $ cobBindTest��5#      $
��Left=�6(   $��	10,10,0,0q�6k   $	��Top=�6~   $	��120��6�   $��2��6�   $��22��6�    �� SelectedValue 6C   �� $ Customer�6�   �� 5$   
   -
   5         ��Name$ 
imgPicture��5$      $	��155��6$   $��
10,10,10,0q�61   $��1��6E   $	��Top=�6R    J� OpacityMask
 �   �6j   �� 5%   
   -   5        $ 	btnGetImg��5%      $��上传图片��6$   $
��Left=�63   $��
28,145,0,0q�6N   $��1��6b   $	��Top=�6o   $��75��6�    J� RenderTransformOrigin$ 0.88,0.8&�6�   $��2��6�   $��20��6�   6�   �� 5&   
   -   5         ��Name$ txtFileName��5&      $��2��6'   $
��Left=�67   $��23��6R   $��
28,117,0,0q�6^   $��1��6r    �� TextWrapping$
 Wrap=�6   $��0��6�   $	��Top=�6�   $	��349��6�   �� 5'   
   -   5        $ btnReadByte��5'      $��金额大小写转换��6&   $��2��68   $
��Left=�6H   $��122,145,0,0q�6c   $��1��6x   $	��Top=�6�   $��90��6�   6�   �� 5(   
   -   5        $ txtByte��5(      $��2��6#   $
��Left=�63   $	��102��6N   $��	28,10,0,0q�6[   $��1��6n   $
 Wrap=�6{   $��TextBox��6�   $	��Top=�6�   $	��349��6�   �� 5)   
   -   5        $ imgTest��5)      $��1��6!   $	��155��61   $��
10,10,10,0q�6>   $��1��6R   $	��Top=�6_   5*      5+      