   M S B A M L   `   `   `  ����  TheAdministratorFrom$    TheAdministratorFrom.DataBases   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     6F   -   5          �Name$  	Databases��5   �    � Title$ 账套管理��5   	   $	��200��6   $	��300��6#   ���	#FFB8F8B8$	��300��6F   $	��200��6U    � WindowStartupLocation$ CenterScreen=�6e   .��5      �  � RowDefinitions 5   
   �� 5      �� 5	      $��30 �6   �� 5
      $��30 �6   .+�5   
   �� -   5         ��Name$ btnAdd��5      $��添加��6!   $
��Left=�6.   $��0,5,0,0q�6I   $��1��6Z   $	��Top=�6g   $��50��6   ��5      �� 5       �� Color$ 	#FFDDDDDD��6"    �� Opacity$ 0Q�64   5      �� 5   
   -   5        $ 	btnModify��5      $��修改��6$   $
��Left=�61   $��55,5,0,0q�6L   $��1��6^   $	��Top=�6k   $��50��6�   ��5      �� 5      $ 	#FFDDDDDD��6"   $ 0Q�64   5      �� 5   
   -   5        $ 	btnDelete��5      $��删除��6$   $
��Left=�61   $��	165,5,0,0q�6L   $��1��6_   $	��Top=�6l   $��50��6�   ��5      �� 5      $ 	#FFDDDDDD��6"   $ 0Q�64   5      �� 5   
   -   5         ��Name$ 
lblMessage��5      $�� ��6$   $��2��6/   
����  �6<   �� 5   
   -   5        $ btnSave��5      $��保存��6"   $
��Left=�6/   $��	110,5,0,0q�6J   $��1��6]   $	��Top=�6j   $��50��6�   ��5      �� 5      $ 	#FFDDDDDD��6"   $ 0Q�64   5       &   System.Windows.Controls.DataGrid  5!   
   -   5          Name$ dgDatabases��5!      
����  �
����  �	   VerticalGridLinesBrush
	 ��  �
   HorizontalGridLinesBrush

 ��  �   AlternatingRowBackground 5"      �� 5#      $ Black��6"   $ 0Q�60      RowBackground 5%      �� 5&      $ Black��6"   $ 0Q�60   ��5(      �� 5)      $ 	#FFF0F0F0��6"   $ 0Q�64   5+      5-      5.      