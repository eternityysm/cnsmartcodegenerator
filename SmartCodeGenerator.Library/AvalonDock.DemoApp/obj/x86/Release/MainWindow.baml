   M S B A M L   `   `   `  ���� T  PAvalonDock, Version=1.3.3590.0, Culture=neutral, PublicKeyToken=85a1e0ada7ec13e4;,clr-namespace:AvalonDock;assembly=AvalonDock
AvalonDock  M IAvalonDock.DemoApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AvalonDock.DemoAppAvalonDock.DemoApp #   AvalonDock.DemoApp.MainWindow   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     ;ad,clr-namespace:AvalonDock;assembly=AvalonDock     2local clr-namespace:AvalonDock.DemoApp     -     � Title$!  AvalonDock Demo Application��$	��393��$	��754��.���  � RowDefinitions �� $��32 ��� �� $��32 �.+�o� .@�m� $��Dockable Contents��.@�m� -   $
��Show������ *DockableContents+ �� ElementName$ DockManager������ .R��� ���� *Title+�� m� -   $��
Create New��m� -   $��Create New Floating��m� $��Document Contents��.@�m� -   $
��Show������ *	Documents+$ DockManager������ .R��� ���� *Title+�� m� -   $��
Create New��m� $��Layout��.@�m� $��
Save To ->��.@�m� -   $��Layout1��m� -   $��Layout2��m� -	   $��Layout3��m� -
   $��Layout4��m� $��Restore From ->��.@�m� -   $��Layout1��m� -   $��Layout2��m� -   $��Layout3��m� -   $��Layout4��m� -   $��Save to text��m� -   $��Load from text��m� -   $��Reset Content��m� $��Themes��.@�m� -   $��Aero.NormalColor��
 � Tag$ aero.normalcolor��m� -   $��Classic��$ classic��m� -   $��Luna.Normalcolor��$ luna.normalcolor��m� -   $��Generic��$ generic���� m� -   $��Dev 2010��$6 0/AvalonDock.Themes;component/themes/dev2010.xaml��m� -   $��Expression Dark��$= 7/AvalonDock.Themes;component/themes/ExpressionDark.xaml���� m� -   $��Default���� m� $��Colors��.@�m� -   $��Green��m� -   $��Orange��m� -   $
��Gray��m� -   $��Yellow��   AvalonDock.DockingManager  -     Name$ DockManager��   IsAnimationEnabled . $��1��$��0,4,0,0q�   ActiveContent �� $ Content1�� � LayoutTransform ��  �� ScaleX �� *Value+$ 
zoomSlider��	 �� ScaleY	 �� *Value+$ 
zoomSlider��.��   AvalonDock.ResizingPanel  
   Orientation$
 
Horizontal=�.+�     ResizeWidth$
 0.5* �$
 Vertical=�.+�   AvalonDock.DockablePane   �� SelectedIndex$ 1��.@�.  (AvalonDock.DemoApp.SampleDockableContent  -     Name$ Content1��   AvalonDock.ManagedContent   Title$ Content1��   IsCloseable .     Icon$ Images\database.png��  -   $ Content2��$ Content2��$ Images\database.png��  -    $ Content3��$ Content3��$ Images\database.png��  .@�  -!   $ Content4��$ Content4��$ Images\database.png��    AvalonDock.DockableContent  -"     Name$" DockingManagerPropertiesHost��$ DockingManager Properties��  -#   $ NestedDockingManager��$ NestedDockingManager��.��  .��  $
 
Horizontal=�.+�  $	 100 �.@�  -$   $ InnerContent1��$ InnerContent1��   AvalonDock.DocumentPane  .@�    AvalonDock.DocumentContent  -%     Name$ 	InnerDoc1��$ 	InnerDoc1��  -&     Name$ DocumentHost��.@�  -'   $
��Doc1��   IsFloatingAllowed .     IsLocked . $
 Doc1��$ Images\file-manager.png��.����  �� AcceptsReturn . $ �� HorizontalScrollBarVisibility$
 Auto=�" �� VerticalScrollBarVisibility$
 Auto=� �� 
AcceptsTab .   -(   $
��Doc2��$
 Doc2��.����   -)   $
��Doc3��$
 Doc3��.����   -*   $
��Doc4��$
 Doc4��.���� �� $��2��.@��� .����  �� Orientation$ 
Horizontal=�.+��� $��A��$��Center=��� -+    ��Name$ 
zoomSlider��$��Center=� � Value$ 1Q� �� IsSnapToTickEnabled .  �� TickFrequency$	 0.2Q� �� TickPlacement$
 Both=�  � Minimum$	  0.5Q�! � Maximum$! 3Q�" � SmallChange$	" 0.5Q�# � LargeChange$	# 0.5Q�$	��100���� $��A��$��20(�$��Center=�