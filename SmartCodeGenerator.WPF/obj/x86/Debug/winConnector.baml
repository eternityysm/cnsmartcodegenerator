   M S B A M L   `   `   `  ����T  PAvalonDock, Version=1.3.3590.0, Culture=neutral, PublicKeyToken=85a1e0ada7ec13e4;,clr-namespace:AvalonDock;assembly=AvalonDock
AvalonDock  5   	    SmartCodeGenerator%   SmartCodeGenerator.winConnector   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;ad,clr-namespace:AvalonDock;assembly=AvalonDock     5   	     � Title$  	Connector��5   	    � Icon$ images/Logo.png��6   $	��240��64   $	��360��6A    � WindowStartupLocation$ CenterScreen=�6N    � 
ResizeMode$ NoResize=�6s    � ShowInTaskbar .  .��5      �  � RowDefinitions 5   
   �� 5      $��40 �6   �� 5	      $��40 �6   �� 5
      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6   �� 5      $��40 �6    � ColumnDefinitions 5   
   �� 5      $	��100 �6   6-   �� 5      $��* �6   6+   �� 5      $��50 �6   6,   .+�5   
   �� $��0��6   $��0��6"   $��Right=�62   $��Center=�6N   $��5,0,5,0q�6l   .+�5      �� .��6   Server Name:6#   5      �� 5   
   $��0��6   $��1��6"   $
��Left=�62   $��Center=�6M   $��5,0,5,0q�6k   5      �� 5   
   $��1��6   $��0��6"   $��Right=�62   $��Center=�6N   $��5,0,5,0q�6j   .+�5      �� .��6   Authentication:6&   5      �� 5   
   $��2��6   $��0��6"   $��Right=�62   $��Center=�6N   $��5,0,5,0q�6j   .+�5      �� .��6   Login:6   5       �� 5!   
   $��3��6   $��0��6"   $��Right=�62   $��Center=�6N   $��5,0,5,0q�6j   .+�5"      �� .��6   	Password:6    5#      �� 5$   
   -   5        $��cboxServerList��5$   k   $��1��6   $��0��6#   $��23��61   $
��Left=�6=   $��5,0,5,0q�6Z   $��Center=�6�   $	��170��6�    J� 	AllowDrop .  �� 
IsEditable . ��6�   �� 6�   �� 5%   
   -   5        $��cboxAuthentication��5%   k   $��1��6   $��1��6#   $��23��61   $
��Left=�6=   $��5,0,5,0q�6Z   $��Center=�6�   $	��170��6�    . 	 �� SelectedIndex$	 0��6�   
 K� ZIndex$
 
1000000000��6�   .@�5&      �� $��Windows Authentication��6   �� 5'      $��SQL Server Authentication��6   5(      �� 5)   
   -   5        $��cboxAutoGetServerList��5)   L   $��2��6   $��0��6#   $��Center=�60   .��6�   Auto6�   �� 5*   
   -   5        $��txtLoginName��5*   /   $��1��6   $��2��6"   $��23��6D   $	��170��6P   $
��Left=�6\   $��5,0,5,0q�6y   6�   G� 5+   
   -   5        $��txtPassword��5+   4   $��1��6   $��3��6'   $��23��6H   $	��170��6T   $
��Left=�6`   $��5,0,5,0q�6}   6�   �� 5-   
   -   5        $��
btnConnect��5-      $��1��6#   $��4��63   $��23��6A   $	��170��6M   $
��Left=�6Y   $	��Top=�6u   $��5,10,5,0q�6�   .��6�   	Connect6�   5.      5/      