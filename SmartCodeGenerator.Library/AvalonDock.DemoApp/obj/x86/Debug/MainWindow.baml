   M S B A M L   `   `   `  ����T  PAvalonDock, Version=1.3.3590.0, Culture=neutral, PublicKeyToken=85a1e0ada7ec13e4;,clr-namespace:AvalonDock;assembly=AvalonDock
AvalonDock  5	   	   M IAvalonDock.DemoApp, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:AvalonDock.DemoAppAvalonDock.DemoApp 5
   	   #   AvalonDock.DemoApp.MainWindow   5   	   W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   ;ad,clr-namespace:AvalonDock;assembly=AvalonDock     5	   	   2local clr-namespace:AvalonDock.DemoApp     5
   	   -   5          � Title$!  AvalonDock Demo Application��5   	   $	��393��6-   $	��754��6:   .��5      �  � RowDefinitions 5   
   �� 5      $��32 �6   �� 5      �� 5      $��32 �6   .+�5   
   o� .@�5      m� $��Dockable Contents��6   .@�5      m� -   5        $
��Show��5      ��5      �� *DockableContents+ �� ElementName$ DockManager����5      �� 5      .R�5      �� ��6(   �� *Title+5      5      �� 5      m� 5       -   5        $��
Create New��5       6/   m� 5!      -   5        $��Create New Floating��5!      68   5"      m� 5#      $��Document Contents��6   .@�5$      m� -   5        $
��Show��5$      ��5%      �� *	Documents+$ DockManager����5'      �� 5(      .R�5)      �� ��6(   �� *Title+5*      5,      �� 5-      m� 5.      -   5        $��
Create New��5.      6/   5/      m� 50      $��Layout��6   .@�51      m� $��
Save To ->��6   .@�52      m� -   5        $��Layout1��52      60   m� 53      -   5        $��Layout2��53      60   m� 54      -	   5        $��Layout3��54      60   m� 55      -
   5        $��Layout4��55      60   56      m� 57      $��Restore From ->��6   .@�58      m� -   5        $��Layout1��58      60   m� 59      -   5        $��Layout2��59      60   m� 5:      -   5        $��Layout3��5:      60   m� 5;      -   5        $��Layout4��5;      60   5<      m� 5=      -   5        $��Save to text��5=      61   m� 5>      -   5        $��Load from text��5>      63   m� 5?      -   5        $��Reset Content��5?      62   5@      m� 5A      $��Themes��6   .@�5B      m� -   5        $��Aero.NormalColor��5B      
 � Tag$ aero.normalcolor��65   6L   m� 5C      -   5        $��Classic��5C      $ classic��6,   6:   m� 5D      -   5        $��Luna.Normalcolor��5D      $ luna.normalcolor��65   6L   m� 5E      -   5        $��Generic��5E      $ generic��6,   6:   �� 5F      m� 5G      -   5        $��Dev 2010��5G      $6 0/AvalonDock.Themes;component/themes/dev2010.xaml��6-   6d   m� 5H      -   5        $��Expression Dark��5H      $= 7/AvalonDock.Themes;component/themes/ExpressionDark.xaml��64   6r   �� 5J      m� 5K      -   5        $��Default��5K      6,   �� 5L      m� 5M      $��Colors��6   .@�5N      m� -   5        $��Green��5N      6.   m� 5O      -   5        $��Orange��5O      6/   m� 5P      -   5        $
��Gray��5P      6-   m� 5Q      -   5        $��Yellow��5Q      6/   5R      5S      5T         AvalonDock.DockingManager  5W   
   -   5          Name$ DockManager��5W         IsAnimationEnabled . $��1��6K   $��0,4,0,0q�6X      ActiveContent 5X      �� $ Content1�� � LayoutTransform 5Y      �� 5Z       �� ScaleX 5[      �� *Value+$ 
zoomSlider��	 �� ScaleY	 5\      �� *Value+$ 
zoomSlider��.��5^         AvalonDock.ResizingPanel  
   Orientation$
 
Horizontal=�6   .+�5_           ResizeWidth$
 0.5* �6#   $
 Vertical=�6G   .+�5`         AvalonDock.DockablePane   �� SelectedIndex$ 1��6&   .@�5a      .  (AvalonDock.DemoApp.SampleDockableContent  -   5          Name$ Content1��5a   6      AvalonDock.ManagedContent   Title$ Content1��6H      IsCloseable .     Icon$ Images\database.png��6m     5b      -   5        $ Content2��5b   6   $ Content2��6H   $ Images\database.png��6Y     5c      -    5        $ Content3��5c   6   $ Content3��6H   $ Images\database.png��6Y   5d        5e      .@�5f        -!   5        $ Content4��5f   6   $ Content4��6H   $ Images\database.png��6Y       AvalonDock.DockableContent  5g      -"   5          Name$" DockingManagerPropertiesHost��5g   -   $ DockingManager Properties��6S   6w     5h      -#   5        $ NestedDockingManager��5h   -   $ NestedDockingManager��6K   .��5i        .��5j   "     $
 
Horizontal=�63   .+�5k   &     $	 100 �66   .@�5l   *     -$   5        $ InnerContent1��5l   F   $ InnerContent1��6]   5m   '      AvalonDock.DocumentPane  5n   &   .@�5o   *       AvalonDock.DocumentContent  -%   5          Name$ 	InnerDoc1��5o   =   $ 	InnerDoc1��6P   5p   '   5q   #   5r      5s      5t      5u        5v      -&   5          Name$ DocumentHost��5v   "   .@�5w        -'   5        $
��Doc1��5w   )      IsFloatingAllowed .     IsLocked . $
 Doc1��6`   $ Images\file-manager.png��6m   .��5x      ��  �� AcceptsReturn . $ �� HorizontalScrollBarVisibility$
 Auto=�67   " �� VerticalScrollBarVisibility$
 Auto=�6]    �� 
AcceptsTab . 6�   5y        5z      -(   5        $
��Doc2��5z   *   $
 Doc2��67   .��5{      �� 5|        5}      -)   5        $
��Doc3��5}   *   $
 Doc3��67   .��5~      �� 5        5�      -*   5        $
��Doc4��5�   *   $
 Doc4��67   .��5�      �� 5�      5�      5�      5�      �� 5�   
   $��2��6   .@�5�      �� .��5�      ��  �� Orientation$ 
Horizontal=�6   .+�5�      �� $��A��6    $��Center=�6)   �� 5�      -+   5         ��Name$ 
zoomSlider��5�      $��Center=�61    � Value$ 1Q�6L    �� IsSnapToTickEnabled .  �� TickFrequency$	 0.2Q�6q    �� TickPlacement$
 Both=�6�     � Minimum$	  0.5Q�6�   ! � Maximum$! 3Q�6�   " � SmallChange$	" 0.5Q�6�   # � LargeChange$	# 0.5Q�6�   $	��100��6�   �� 5�      $��A��6    $��20(�6)   $��Center=�67   5�      5�      5�      5�      5�      