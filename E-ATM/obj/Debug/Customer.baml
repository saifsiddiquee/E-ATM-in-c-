   M S B A M L   `   `   `  ����U  QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f>/clr-namespace:ControlzEx;assembly=MahApps.Metro
ControlzEx  5   	   	 E-ATM   E_ATM.Customer   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6fsxaml#http://github.com/fsprojects/FsXaml     5   	   ;Controls,http://metro.mahapps.com/winfx/xaml/controls   5   	   @
ControlzEx/clr-namespace:ControlzEx;assembly=MahApps.Metro   5   	     � Title$  Customer��5   	   $��555.161��6   $��672.193��6+   .��5      � .+�5
   
   � -   5         �Name$ mainGrid��5
      $��	10,11,2,9q�6!   $	��504��64   $y�Visible=�6A   ��5      �� 5       �� ImageSource$ Images/Asset 1.png��6    j� Stretch$ Uniform=�6>    �� Opacity$
 0.53Q�6P    � ColumnDefinitions 5      �� 5      �� 5      �� 5       � RowDefinitions 5      �� 5      �� 5      �� 5      .+�5      ]� 
������� J� Opacity$ .8Q�6+   $��0��68   $��0��6E   $��3��6U   $��0,0,10,0q�6i   $y�Hidden=�6{   .+�5      ��  �� Orientation$ 
Horizontal=�6   $y�Hidden=�66   .+�5      	� -   5        	 	�Name$	 rbtnMasterCard��5   "   $��0,0,13,0q�6;   $��20(�6M   $��Segoe UI)�6[   $
��Bold"�6q   .��5      �� $��Images/masterCard.png��6    5      	� 5      -   5        $	 rbtnVisaCard��5   "   $��0,0,20,0q�69   $��20(�6K   $��Segoe UI)�6Y   $
��Bold"�6o   .��5       �� $��Images/visaCard.png��6    5!      	� 5"      -   5        $	 rbtnDebitCard��5"   "   $��	0,0,116,0q�6:   $��20(�6M   $��Segoe UI)�6[   $
��Bold"�6q   .��5#      �� $��Images/debitCard.png��6    5$      5&      5'      �� 5(      -   5        
 ��Name$
 
CardNumBox��5(       �� 	MaxLength$ 20��6*   $��3��69   $
��Left=�6M   $��30��6h   $��
120,59,0,0q�6t   $��1��6�    �� TextWrapping$
 Wrap=�5)      $	��Top=�6&   $	��412��6>   *   $MahApps.Metro.Controls.TextBoxHelper   	Watermark$ Enter your Card Number��6J      ClearTextButton . 
�������6�   G� 5*      -   5         G�Name$ PinBox��5*       G� 	MaxLength$ 4��6*   $
��Left=�68   $��120,113,0,0q�6S   $��1��6h   $	��Top=�6u   $��3��5+      $	��412��6*   $��30��66    . $ Enter your 4-digit PIN��6p   
�������6�   �� 5,      -   5         ��Name$ btnNext��5,      $
��Next��6&   $��1��65   $
��Left=�6E   $��	10,34,0,0q�6`   $��2��6s   $	��Top=�5-      $	��198��6)   $��48��65      SquareButtonStyle#���   6A   $��20(�6m   $
��Bold"�6{   6�   5.      � 50   
   -   5        $ menuGrid��50      $y�Hidden=�6!   ��51      �� 52      $ Images/Asset 1.png��6   $ Uniform=�6>   $
 0.53Q�6P    54      �� 55      �� 56      �� 57       59      �� 5:      �� 5;      �� 5<      .+�5>      � $��Center=�6   $	��262��65   $��9,134,10,128q�6B   $��3��6X   $��Center=�6i   $	��202��6�    � Orientation$ Vertical=�6�   .+�5?      �� -	   5        $ WithdrawButton��5?      $��Withdraw��61   $	��200��6D   $��87��6P     AccentedSquareButtonStyle#��[ 6\   $��20(�6�    � Cursor$
 Hand��6�   6�   �� 5@      -
   5        $ BalanceButton��5@      $��Balance��60   $	��200��6B   $��87��6N   #��[ 6Z   $��20(�6�   $
 Hand��6�   6�   �� 5A      -   5        $ HistoryButton��5A      $��Transaction History��60   $	��200��6N   $��87��6Z   #��[ 6f   $��20(�6�   $
 Hand��6�   6�   5B      � 5C      -   5        $ 
OutputGrid��5C      $��1��6'   $
��Left=�67   $	��504��6R   $��	10,10,0,0q�6_   $	��Top=�6r   $	��423��6�   $��2��6�   $��3��6�   .+�5D      �� -   5         ��Name$ WithdrawStackPanel��5D      $
��Left=�69   $	��142��6T   $��
20,141,0,0q�6a   $	��Top=�6u   $	��403��6�   $y�Hidden=�6�   .+�5E      �� -   5        $
 WithdrawTextBox��5E      $��42��67   $
 Wrap=�6C   $ Enter your amount��5F       . 6O   �� 5G      -   5        $ ConfirmButton��5G      $��98,17,133,0q�64   $��49��6I   #���   6U   $��Confirm��6�   $��24(�6�   6�   5I      �� 5J      -   5        $ BalanceStackPanel��5J      $
��Left=�68   $	��209��6S   $��	0,183,0,0q�6`   $	��Top=�6s   $	��413��6�   $y�Hidden=�6�   .+�5K      �� $��Balance��6   $��36(�6.   $
��Bold"�6<   �� 5L      -   5         ��Name$ Balance��5L       $��87��62   $��36(�6>   $
��Bold"�6L   5M      5N      �� 5O      -   5        $ btnBack��5O      $�� ��6&   $
��Left=�61   $��40,64.667,0,0q�6L   $��2��6c   $	��Top=�6p   $	��112��6�   $	��100��6�   $
 Hand��6�   ��6�   Z� ��5P      �� 5Q      $ Images/backButton.png��6!   5S      �� 5T      $��0��6   $��1��6*   $��5��6:   $��4��6K   .��5U      &   System.Windows.Controls.DataGrid  -   5          Name$ TransactionDataGrid��5U         AutoGenerateColumns . "   VerticalScrollBarVisibility$ Hidden=�6S   $
��Left=�5V      $	��503��62   $��0,10,0,0q�6?   $	��Top=�6Q   $	��426��6i      GridLinesVisibility$
 None=�5W      +   %MahApps.Metro.Controls.DataGridHelper   EnableCellEditAssist . $y�Hidden=�6b   5X      5Y      5Z      5]      5^      