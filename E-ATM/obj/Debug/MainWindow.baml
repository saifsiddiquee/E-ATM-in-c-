   M S B A M L   `   `   `  ����	  E-ATM    E_ATM.MainWindow   5      R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   6fsxaml#http://github.com/fsprojects/FsXaml     5   	   U QMahApps.Metro, Version=1.5.0.23, Culture=neutral, PublicKeyToken=f4fb5a3c4d1e5b4f;Controls,http://metro.mahapps.com/winfx/xaml/controls  5   	     � Title$  E-ATM Login��5   	   $	��435��6   $	��500��6*   ���	#FFBCC3CA � WindowStartupLocation$ CenterScreen=�5	       � ShowInTaskbar .   � 
ResizeMode$ NoResize=�6R      AccentColorBrush(  "MahApps.Metro.Controls.MetroWindow   	GlowBrush# �   5
       � Icon$ Images/Asset 1.png��6F      RightWindowCommands 5      +  %MahApps.Metro.Controls.WindowCommands  5   
   .@�5      �� $��settings��6   �� 5      .��5      ��  �� Orientation$ 
Horizontal=�6   .+�5      �� $��20��6    $��20��5      ��5      ��  �� RelativeSource �� 	 �� AncestorType$	 ButtonL�
 �� Path$
 
Foreground� J� OpacityMask 5      !� 5       j� Stretch$
 Fill=�6*     appbar_cupcake !� Visual# [ 69   5      �� 5      $��4 0 0 0q�6    $��Center=�5      $��Details��5      5      5      5      .��5      � -   5         �Name$ GridMain��5      $��	10,10,4,2q�6   .+�5    
   �� $
��Left=�6   $��36��6/   $��
10,149,0,0q�6;   $
��Wrap=�6P   $C��=Enter login and Password. Login can be E-mail or phone Number��5!      $	��Top=�6Y   $	��460��6q   $��16(�6}   �� 5#   
   -   5         ��Name$ UserTextBox��5#      $��30��6'    �� TextWrapping$
 Wrap=�64   $	��460��6H   $��Center=�6T   *  $MahApps.Metro.Controls.TextBoxHelper   ClearTextButton .    	Watermark$ E-mail or phone number��5$      $��Center=�6L   $��10,191,10,173q�6g   G� 5%   
   -   5         G�Name$ passBox��5%      $��Center=�6'   $��Center=�6D   $��30��6_   $	��460��6k    . $ Password��5&   D   $��10,243,10,121q�6p   �� 5(   
   -   5        $��Log in��5(      $��Center=�6"   $��Center=�6?   $	��112��6Z   $��34��6f   $��12,348,356,12q�6r   ���	#FF4F6CE9$��14(�5)   (   $��Arial Black)�66   $
��Bold"�6O     AccentedSquareButtonStyle#��[ 6a    �� 	ClickMode$ Press=�6�    � Cursor$
 Hand��6�   6�   �� 5*   
   $
��Left=�6   $	��134��6+   $��
177,10,0,0q�68   $	��Top=�6L   $	��126��6d   $��Images/Asset 1.png��6p   5,      5.      