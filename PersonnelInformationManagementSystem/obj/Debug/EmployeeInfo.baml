   M S B A M L   `   `   `  ����R  NWpfCustomControlLibrary, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullbFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibraryWpfCustomControlLibrary  5   	   ( $PersonnelInformationManagementSystem7   1PersonnelInformationManagementSystem.EmployeeInfo   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   jWpfCustomControlLibraryFclr-namespace:WpfCustomControlLibrary;assembly=WpfCustomControlLibrary     5   	   -   5          � Title$  员工信息��5   	   $	��600��6   $	��800��6#   ���	#FFB8F8B8$	��800��6F   $	��600��6U    � Icon$ 
..\GBT.ico��6e   .��5      �  � ColumnDefinitions 5   
   �� 5      $	��140 �6   �� 5	      $	��100 �6   �� 5
      �� 5      $	��100 �6   �� 5      �� 5      $	��100 �6   �� 5       � RowDefinitions 5   
   �� 5      $��45 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      �� 5      $��40 �6   .+�5   
   �� ���	#FF007E1D$��1q�6)   $��10,10,10,20q�6=   $��1��6R   $��4��6_   ._�5      �� -   5         ��Name$ imgPhoto��5      $��0,0,0,0q�6&   $��4��67   $��1��6H   5      �� 5   
   -   5         ��Name$ lblEmployeeName��5      $��姓名��6)   $��3��66   $��1��6F   $��16(�6S   �� 5   
   -   5         ��Name$ txtEmployeeName��5      $��4��6+   $��
10,4,10,10q�6;   $��1��6O    �� TextWrapping$
 Wrap=�6\   $��0,0,0,2q�6p   ���	#FF007E1D��6�   ��  �� Path$ EmployeeName�	 �� Mode$	 TwoWay=�
 �� UpdateSourceTrigger$
 PropertyChanged=�.��6�   ��5      �� 5        �� Color$ White��6"    �� Opacity$ 0Q�60   .��5!   "   5"      �� 5#   
   -   5        $ 	lblBillNo��5#      $��工号��6#   $��1��60   $��1��6@    J� RenderTransformOrigin$ 0.447,-0.692&�6M   $��16(�6r   �� 5$   
   -   5        $ 	txtBillNo��5$      $��2��6%   $��
10,4,10,10q�65   $��1��6I   $
 Wrap=�6V   ���	#FF007E1D$��0,0,0,2q�6�   ��6�   �� $ BillNo�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��5%      �� 5&      $ White��6"   $ 0Q�60   .��5'   "   5(      �� 5)   
   -   5        $ lblBirthday��5)      $��生日��6%   $��5��62   $��1��6B   $��16(�6O   (  "System.Windows.Controls.DatePicker  5*   
   -   5          Name$ dprBirthday��5*      $��6��6*   $��
10,4,10,10q�6:   $��1��6N   $��0,0,0,2q�6[   ���	#FF007E1D
���   �   Text 6�   �� $ Birthday�$	 TwoWay=�$
 PropertyChanged=���5+      �� 5,      $ Transparent��6"   $ 0Q�66   5.      �� 5/   
   -	   5        $ 	lblNation��5/      $��民族��6#   $��1��60   $��2��6@   $��16(�6M   �� 50   
   -
   5        $ 	txtNation��50      $��2��6%   $��
10,4,10,10q�65   $��2��6I   $
 Wrap=�6V   ���	#FF007E1D$��0,0,0,2q�6�   ��6�   �� $ Nation�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��51      �� 52      $ White��6"   $ 0Q�60   .��53   "   54      �� 55   
   -   5        $ lblSex��55      $��性别��6    $��3��6-   $��2��6=   $��16(�6J   �� 56   
   -   5         ��Name$ cobSex��56      $��4��6#   $��
10,8,10,10q�63   $��2��6G   $��0,0,0,2q�6T   ���	#FF007E1D �� Text 6�   �� $	 Sex�$	 TwoWay=�$
 PropertyChanged=���57      �� 58       �� EndPoint$	 0,1&�6&    �� 
StartPoint$	 0,0&�65   .��59      �  � Color$ 	#FFF0F0F0��6#    � Offset$ 0Q�65   � 5:      $ 	#00E5E5E5��6#   $ 1Q�65   5;      .@�5=      �� $	��男��6   �� 5>      $	��女��6   5?      �� 5@   
   -   5        $ 	lblIDCard��5@      $��身份证号码��6#   $��5��63   $��2��6C   $��16(�6P   �� 5A   
   -   5        $ 	txtIDCard��5A      $��6��6%   $��
10,4,10,10q�65   $��2��6I   $
 Wrap=�6V   $��0,0,0,2q�6j   ���	#FF007E1D��6�   �� $ IDCard�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��5B      �� 5C      $ White��6"   $ 0Q�60   .��5D   "   5E      �� 5F   
   -   5        $ lblIdCardIsValid��5F      $��身份证有效期��6*   $��1��6;   $��3��6K   $��16(�6X     5G   
   -   5        $ dprIdCardIsValid��5G      $��2��6/   $��
10,4,10,10q�6?   $��3��6S   $��0,0,0,2q�6`   ���	#FF007E1D
���   � 6�   �� $ IdCardIsValid�$	 TwoWay=�$
 PropertyChanged=���5H      �� 5I      $ Transparent��6"   $ 0Q�66   5K      �� 5L   
   -   5        $ lblEducation��5L      $��学历��6&   $��3��63   $��3��6C   $��16(�6P   �� 5M   
   -   5        $ cobEducation��5M      $��4��6)   $��
10,8,10,10q�69   $��3��6M   $��0,0,0,2q�6Z   ���	#FF007E1D 6�   �� $ 	Education�$	 TwoWay=�$
 PropertyChanged=���5N      �� 5O      $	 0,1&�6&   $	 0,0&�65   .��5P      � $ 	#FFF0F0F0��6#   $ 0Q�65   � 5Q      $ 	#00E5E5E5��6#   $ 1Q�65   5R      5T      �� 5U   
   -   5        $ lblMajor��5U      $��专业��6"   $��5��6/   $��3��6?   $��16(�6L   �� 5V   
   -   5        $ txtMajor��5V      $��6��6$   $��
10,4,10,10q�64   $��3��6H   $
 Wrap=�6U   $��0,0,0,2q�6i   ���	#FF007E1D��6�   �� $ Major�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��5W      �� 5X      $ White��6"   $ 0Q�60   .��5Y   "   5Z      �� 5[   
   $��7��6   $��6��6)   ��5\      �� 5]      $ White��6"   $ 0Q�60   .@�5_      �� $��家庭成员��6   ��5`      �� 5a      $	 0,1&�6*   $	 0,0&�69   .��5b      � $ 	#FFF0F0F0��6'   $ 0Q�69   � 5c      $ 	#00E5E5E5��6'   $ 1Q�69   5d      .��5f      �  5g      �� 5h      ��5j      �� 5k      $ 	#FFE5E5E5��6*   $ 0Q�6<   5m      5n      �� 5o      $��毕业院校��6   ��5p      �� 5q      $	 0,1&�6*   $	 0,0&�69   .��5r      � $ 	#FFF0F0F0��6'   $ 0Q�69   � 5s      $ 	#00E5E5E5��6'   $ 1Q�69   5t      .��5v      �  5w      �� 5x      ��5z      �� 5{      $ 	#FFE5E5E5��6*   $ 0Q�6<   5}      5~      �� 5      $��工作经历��6   ��5�      �� 5�      $	 0,1&�6*   $	 0,0&�69   .��5�      � $ 	#FFF0F0F0��6'   $ 0Q�69   � 5�      $ 	#00E5E5E5��6'   $ 1Q�69   5�      .��5�      �  5�      �� 5�      ��5�      �� 5�      $ 	#FFE5E5E5��6*   $ 0Q�6<   5�      5�      �� 5�      $��管理信息��6   ��5�      �� 5�      $	 0,1&�6*   $	 0,0&�69   .��5�      � $ 	#FFF0F0F0��6'   $ 0Q�69   � 5�      $ 	#00E5E5E5��6'   $ 1Q�69   5�      .��5�      �  5�      �� 5�      $��40 �6(   �� 5�      $��40 �6(   �� 5�      $��40 �6(   �� 5�       5�      �� 5�      $	��120 �6+   �� 5�      �� 5�      $	��120 �6+   �� 5�      ��5�      �� 5�      $ 	#FFE5E5E5��6*   $ 0Q�6<   .+�5�      �� -   5        $ 
lblCreater��5�      $��	创建人��60   $��16(�6>   �� 5�      -   5        $ lblModifier��5�      $��	修改人��61   $��16(�6?   $��1��6M   �� 5�      -   5        $ lblCreaterDate��5�      $��创建日期��64   $��16(�6C   $��2��6Q   �� 5�      -   5        $ lblModifiedDate��5�      $��修改日期��65   $��16(�6D   $��1��6R   $��2��6_   �� 5�      -   5        $ 
txtCreater��5�      $��1��62   $��	10,4,7,10q�6B   $
 Wrap=�6U   $��0,0,0,2q�6i   ���	#FF007E1D$��16(�6�   ��6�   �� $ Creater�$	 OneWay=�.��6�   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ txtModifierDate��5�      $��1��67   $��	10,4,7,10q�6G   $
 Wrap=�6Z   $��0,0,0,2q�6n   ���	#FF007E1D$��16(�6�   $��1��6�   ��6�   �� $ Modifier�$	 OneWay=�.��6�   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ txtCreaterDate��5�      $��3��66   $��	10,4,7,10q�6F   $
 Wrap=�6Y   $��0,0,0,2q�6m   ���	#FF007E1D$��16(�6�   ��6�   �� $ 
CreateDate�$	 OneWay=�.��6�   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ txtModifiedDate��5�      $��3��67   $��	10,4,7,10q�6G   $
 Wrap=�6Z   $��0,0,0,2q�6n   ���	#FF007E1D$��16(�6�   $��1��6�   ��6�   �� $ ModifiedDate�$	 OneWay=�.��6�   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ 
lblAuditor��5�      $��	审核人��60   $��16(�6>   $��2��6L   �� 5�      -   5        $ 
txtAuditor��5�      $��1��62   $��	10,4,7,10q�6B   $
 Wrap=�6U   $��0,0,0,2q�6i   ���	#FF007E1D$��16(�6�   $��2��6�   ��6�   �� $ Auditor�$	 OneWay=�.��6�   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      �� 5�      -   5        $ lblAuditDate��5�      $��审核日期��62   $��16(�6A   $��2��6O   $��2��6\   �� 5�      -    5        $ txtAuditDate��5�      $��3��64   $��	10,4,7,10q�6D   $
 Wrap=�6W   $��0,0,0,2q�6k   ���	#FF007E1D$��16(�6�   $��2��6�   ��6�   �� $ 	AuditDate�$	 OneWay=�.��6�   ��5�      �� 5�      $ White��6.   $ 0Q�6<   .��5�   .   5�      5�      5�      5�      �� 5�   
   -!   5        $ lblNativePlace��5�      $��籍贯��6(   $��1��65   $��4��6E   $��16(�6R   �� 5�   
   -"   5        $ txtNativePlace��5�      $��2��6*   $��
10,4,10,10q�6:   $��4��6N   $
 Wrap=�6[   ���	#FF007E1D$��0,0,0,2q�6�   ��6�   �� $ NativePlace�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      �� 5�   
   -#   5        $ lblCensusRegister��5�      $��户籍��6+   $��3��68   $��4��6H   $��16(�6U   �� 5�   
   -$   5        $ txtCensusRegister��5�      $��4��6-   $��
10,4,10,10q�6=   $��4��6Q   $
 Wrap=�6^   ���	#FF007E1D$��0,0,0,2q�6�   ��6�   �� $ CensusRegister�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      �� 5�   
   -%   5        $ lblMobilePhone��5�      $��手机号码��6(   $��5��67   $��4��6G   $��16(�6T   �� 5�   
   -&   5        $ txtMobilePhone��5�      $��6��6*   $��
10,4,10,10q�6:   $��4��6N   $
 Wrap=�6[   ���	#FF007E1D$��0,0,0,2q�6�   ��6�   �� $ MobilePhone�$	 TwoWay=�$
 PropertyChanged=�.��6�   ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      �� 5�   
   -'   5        $ lblHomeAddress��5�      $��家庭住址��6(   $��1��67   $��5��6G   $��16(�6T   �� 5�   
   -(   5        $ txtHomeAddress��5�      $��2��6*   $��
10,4,10,10q�6:   $��5��6N   $
 Wrap=�6[   ���	#FF007E1D$��0,0,0,2q�6�   $��5��6�   ��6�   �� $ HomeAddress�$	 TwoWay=�$
 PropertyChanged=�.��6	  ��5�      �� 5�      $ White��6"   $ 0Q�60   .��5�   "   5�      -   'WpfCustomControlLibrary.ToolBarAdvanced  5�   
   -)   5          Name$ 
tbrToolBar��5�   2   $��7��6F   $
��Auto��6Z   5�      5�      