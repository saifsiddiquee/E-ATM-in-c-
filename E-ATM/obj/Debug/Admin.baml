   M S B A M L   `   `   `  ����	  E-ATM    E_ATM.Admin   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6fsxaml#http://github.com/fsprojects/FsXaml     5   	   U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	   -   5        (  "MahApps.Metro.Controls.MetroWindow   Name$  AdminWindow��5       � Title$ Admin��5      $	��800��6   $	��765��6     � Icon$ Images/Asset 1.png��6,    � WindowStartupLocation$ CenterScreen=�6F    � 
ResizeMode$ CanResizeWithGrip=�6k   .��5      �  � ColumnDefinitions 5	   
   �� 5
      �� 5      �� 5      �� 5       � RowDefinitions 5   
   �� 5      �� 5      �� 5      �� 5      .+�5   
   ]� 
�������$��0��6&   $��0��63   $��5��6C   .+�5      �� .+�5      �� -   5         ��Name$ 
btnRefresh��5      $��60��6-    � Cursor$
 Hand��69      MetroCircleButtonStyle#���   6G   $��78��6x   ��6�   Z� ��6�   Z� ��5      �� 5      	 �� ImageSource$	 Images/refreshButton.png��6%   
 j� Stretch$
 UniformToFill=�6L   5      �� 5      -   5        $ btnCustomer��5      $��60��6.   $��Customer��6:   $��0,10,0,0q�6g   $
 Hand��6y   $��22(�6�   $
��Bold"�6�     SquareButtonStyle#���  6�   �� 5      -   5        $ btnbank��5      $��60��6*   $
��Bank��66   $��0,10,0,0q�6F   $
 Hand��6n   $��22(�6|   $
��Bold"�6�   #���  6�   �� 5       -   5        $ btnAdd��5       $��60��6)   $	��Add��65   $��22(�6C   $
��Bold"�6Q   #���  6c   $��	0,100,0,0q�6�   $
 Hand��6�   �� 5!      -   5        $ 	btnUpdate��5!      $��60��6,   $��Update��68   $��22(�6I   $
��Bold"�6W   #���  6i   $��0,5,0,-7q�6�   $
 Hand��6�   �� 5"      -   5        $ 	btnDelete��5"      $��60��6,   $��Delete��68   $��22(�6I   $
��Bold"�6W   #���  6i   $��	0,10,-1,0q�6�   $
 Hand��6�   �� 5#      -   5        $ btnExit��5#      $��60��6*   $
��Exit��66   $��22(�6E   $
��Bold"�6S   #���  6e   $��	0,210,0,0q�6�   $
 Hand��6�   6�   5$      5&      �� 5'   
   $��0��6   $��1��6&   $��5��66   $��4��6G   .��5(      &   System.Windows.Controls.DataGrid  -	   5          Name$ DataGrid��5(         AutoGenerateColumns . "   VerticalScrollBarVisibility$ Visible=�6D   $
��Left=�5)      $	��749��62   $��	10,10,0,0q�6?   $	��Top=�6R   $	��548��6j      GridLinesVisibility$
 None=�6v   +  %MahApps.Metro.Controls.DataGridHelper   EnableCellEditAssist . ��5*      �� 5+      $	 Images/Asset 1.png��6!   $
 Uniform=�6B    �� Opacity$ .4Q�6T   5-      5.      5/      50      