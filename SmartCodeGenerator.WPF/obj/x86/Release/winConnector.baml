   M S B A M L   `   `   `  ���� T  PAvalonDock, Version=1.3.3590.0, Culture=neutral, PublicKeyToken=85a1e0ada7ec13e4;,clr-namespace:AvalonDock;assembly=AvalonDock
AvalonDock   SmartCodeGenerator%   SmartCodeGenerator.winConnector   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ;ad,clr-namespace:AvalonDock;assembly=AvalonDock       � Title$  	Connector�� � Icon$ images/Logo.png��$	��240��$	��360�� � WindowStartupLocation$ CenterScreen=� � 
ResizeMode$ NoResize=� � ShowInTaskbar .  .���  � RowDefinitions �� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 ��� $��40 � � ColumnDefinitions �� $	��100 ��� $��* ��� $��50 �.+��� $��0��$��0��$��Right=�$��Center=�$��5,0,5,0q�.+��� .��Server Name:�� $��0��$��1��$
��Left=�$��Center=�$��5,0,5,0q��� $��1��$��0��$��Right=�$��Center=�$��5,0,5,0q�.+��� .��Authentication:�� $��2��$��0��$��Right=�$��Center=�$��5,0,5,0q�.+��� .��Login:�� $��3��$��0��$��Right=�$��Center=�$��5,0,5,0q�.+��� .��	Password:�� -   $��cboxServerList��$��1��$��0��$��23��$
��Left=�$��5,0,5,0q�$��Center=�$	��170�� J� 	AllowDrop .  �� 
IsEditable . ���� �� -   $��cboxAuthentication��$��1��$��1��$��23��$
��Left=�$��5,0,5,0q�$��Center=�$	��170�� . 	 �� SelectedIndex$	 0��
 K� ZIndex$
 
1000000000��.@��� $��Windows Authentication���� $��SQL Server Authentication���� -   $��cboxAutoGetServerList��$��2��$��0��$��Center=�.��Auto�� -   $��txtLoginName��$��1��$��2��$��23��$	��170��$
��Left=�$��5,0,5,0q�G� -   $��txtPassword��$��1��$��3��$��23��$	��170��$
��Left=�$��5,0,5,0q��� -   $��
btnConnect��$��1��$��4��$��23��$	��170��$
��Left=�$	��Top=�$��5,10,5,0q�.��	Connect