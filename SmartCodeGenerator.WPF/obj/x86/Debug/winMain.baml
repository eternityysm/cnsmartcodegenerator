   M S B A M L   `   `   `  ����T  PAvalonDock, Version=1.3.3590.0, Culture=neutral, PublicKeyToken=85a1e0ada7ec13e4;,clr-namespace:AvalonDock;assembly=AvalonDock
AvalonDock  5   	   M ISmartCodeGenerator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SmartCodeGeneratorSmartCodeGenerator 5   	       SmartCodeGenerator.winMain   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   ;ad,clr-namespace:AvalonDock;assembly=AvalonDock     5   	   ` \ICSharpCode.AvalonEdit, Version=4.0.0.5950, Culture=neutral, PublicKeyToken=9cc39be672370310?
avalonEdit.http://icsharpcode.net/sharpdevelop/avalonedit  5   	   ,local clr-namespace:SmartCodeGenerator  5   	     � Title$  Smart Code Generator 1.0��5   	    � Icon$ images/Logo.png��6*   $	��720��6A   $
��1000��6N    � WindowStartupLocation$ CenterScreen=�6[    � WindowState$ 	Maximized=�6�    � WindowStyle$ ThreeDBorderWindow=�6�    � 	Resources 5         transparentColor �� EndPoint �� 
StartPoint � Color	 � Offset  thumbnailBackground
 �� ImageSource  statusBarItemStyle �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value O� 	GlowColor O� GlowSize O� Noise O� Opacity  shortcutItemStyle��%�  &	        &	 �     &	 �     &	 t    7   �� 5	   
   $ 0.5,1&�67   $ 0.5,0&�6H   .��5
      � $ 	#2FFFFFFF��6   $	 0.469Q�6-   � 5      $ 	#2FFFFFFF��6   $	 0.498Q�6-   5      �� 5   
   $
 Images\thumbnail.jpg��61   �� 5   
   " ��6+    5      P� 5       �@J�IsMouseOver . . �5      ��  � �� 5      �� 5      $ 0.514,0.821&�62   $ 0.514,0.228&�6I   .��5   "   � $ 	#FF000000��6/   $	 0Q�6A   � 5   "   $ 	#FF000000��6/   $	 1Q�6A   5      5      �� 5       �@J�BitmapEffect 5      O� 5      $ Green��64   $ 20Q�6F   $	 0.5Q�6T   $	 0.4Q�6a   5      �� 5       �@J�OpacityMask 5      �� 5       $ 
0.025,0.49&�62   $ 0.971,0.491&�6H   .��5!   "   � $ 	#8FFFFFFF��6/   $	 0.469Q�6A   � 5"   "   $ 	#8FFFFFFF��6/   $	 0.498Q�6A   5#      5%      5&      5(      �� 5)   
   " ��6*   .�5*      ��  � ��$ 2q�6'   �� 5+       �@��CornerRadius$ 5��6-   �� 5,       � ��$ 80��6&    5-      P� 5.       �@J�IsMouseOver . . �5/      ��  � ��8   63   50      52      53      .��54      ]� .+�55   
   �  � ColumnDefinitions 56      �� 57      $
��218* �6#   �� 58      $
��760* �6#    � RowDefinitions 5:      �� 5;      $��28 �6    �� 5<      $��32 �6    �� 5=      �� 5>      $��32 �6    .+�5A      o� $��0��6   $��2��6!   .@�5B      m� $
��File��6   $��12(�6*   $��28��68   $��Center=�6E   .@�5C      m� -   5        $��New Document��5C      66   m� 5D      -   5        $��Open Document��5D      66   �� 5E      m� 5F      -   5        $
��Save��5F      6/   5G      m� 5H      $��Project��6   .@�5I      m� -   5        $��Open Project��5I      65   �� 5J      m� 5K      -   5        $��Add Doc to Project��5K      6<   m� 5L      -   5        $��Remove Doc from Project��5L      6B   5M      m� 5N      $
��View��6   .@�5O      m� -   5        $��Show Explorer��5O      ��5P      �� *DockableContents+ �� ElementName$ DockManager����5R      �� 5S      .R�5T   "   �� ��6,   �� *Title+5U      5W      �� 5X      m� 5Y      -   5        $��	View Docs��5Y      ��5Z      �� *	Documents+$ DockManager����5\      �� 5]      .R�5^   "   �� ��6,   �� *Title+5_      5a      m� 5b      -	   5        $��Close All Docs��5b      ��5c      �� 5d      .R�5e   "   �� $��Close All Docs��6,   5f      5h      5i      m� 5j      $��Themes��6   $��12(�6,   $��28��6:   $��Center=�6G   .@�5k      m� -
   5        $��Classic��5k      
 � Tag$ classic��60   6>   m� 5l      -   5        $��Generic��5l      $ generic��60   6>   5m      m� 5n      $
��Help��6   .@�5o      m� -   5        $ ��About Smart Code Generator��5o      6D   5p      5q      c� 5r      $��1��6   $��2��6#   .@�5s      �� -   5        $��btnProjOpen��5s       � ToolTip$ Open Project��6-   $��28��6_   $��28��6k   $
��Left=�6x    � Cursor$
 Hand��6�   ��5t      �� 5u      $��Images/OpenProj.png��6"   6D   5w      �� 5x      -   5        $��
btnProjNew��5x      $ New Project��6,   $��28��6\   $��28��6h   $
��Left=�6u   $
 Hand��6�   ��5y      �� 5z      $!��Images/SolutionTemplate.png��6"   6K   5|      �� 5}      -   5        $��
btnOpenDoc��5}      $ Open Document��6+   $��28��6^   $��28��6j   $
��Left=�6w   $
 Hand��6�   ��5~      �� 5      $��Images/Open.png��6"   6@   5�      �� 5�      -   5        $��	btnNewDoc��5�      $ New Document��6*   $��28��6[   $��28��6g   $
��Left=�6t   $
 Hand��6�   ��5�      �� 5�      $��Images/New.png��6"   6?   5�      �� 5�      -   5        $��
btnSaveDoc��5�      $ Save Document��6,   $��28��6^   $��28��6j   $
��Left=�6w   $
 Hand��6�   ��5�      �� 5�      $��Images/Save.png��6&   6F   5�      �� 5�      -   5        $��btnDeleteDoc��5�      $ Delete Document��6.   $��28��6d   $��28��6p   $
��Left=�6}   $
 Hand��6�   ��5�      �� 5�      $��Images/Delete.png��6"   6B   5�      �� 5�      6   �� 5�      -   5        $��btnGenerateCode��5�      $ Generate Code ��61   $��28��6i   $��28��6u   $
��Left=�6�   $
 Hand��6�   ��5�      �� 5�      -   5         ��Name$ 	imgSingle��5�   "   $��Images/SingleGenerate.png��66   6^   5�      �� 5�      -   5        $��btnBatchGenerateCode��5�      $ Batch Generate Code ��66   $��28��6y   $��28��6�   $
��Left=�6�   $
 Hand��6�   ��5�      �� 5�      -   5        $ imgBatch��5�   !   $��Images/BatchCode.png��64   6W   5�      �� 5�      -   5        $��btnDocAddToProj��5�      $ Add Document to Project��61   $��28��6r   $��28��6~   $
��Left=�6�   $
 Hand��6�   ��5�      �� 5�      $��Images/AddToProj.png��6"   6E   5�      �� 5�      -   5        $��btnDocRemoveFromProj��5�      $" Remove Document from Project��66   $��28��6�   $��28��6�   $
��Left=�6�   $
 Hand��6�   ��5�      �� 5�      $��Images/RemoveFromProj.png��6"   6J   5�      �� 5�      5�         AvalonDock.DockingManager  5�      -   5          Name$ DockManager��5�          IsAnimationEnabled . $��2��6O   $��0,4,0,0q�6]   $��2��5�   E      ActiveContent 6   �� $ Content1�� � LayoutTransform 5�      �� 5�        �� ScaleX  5�      �� *Value+$ 
zoomSlider��! �� ScaleY! 5�      �� *Value+$ 
zoomSlider��.��5�         AvalonDock.ResizingPanel  "   Orientation$" 
Horizontal=�6#   .+�5�        #   ResizeWidth$	# 280 �6'   $" Vertical=�6J   .+�5�         AvalonDock.DockablePane  .@�5�      )  #SmartCodeGenerator.ucServerExplorer  -   5        $  Name$$ lucServerExplorer��5�   8      AvalonDock.ManagedContent%   Title$% Server Explorer��6T   6n   5�        5�      .@�5�      ,  &SmartCodeGenerator.ucTemplatesExplorer  -   5        &  Name$& lucTemplatesExplorer��5�   :   $% Templates Explorer��6X   6u   5�      5�        5�      $# * �6'   $" Vertical=�6H   .+�5�        $# 1* �6/   $" Vertical=�6Q   .+�5�   !      AvalonDock.DocumentPane  -   5        '  Name$' DocumentHost��5�   1   .@�5�   "   '  !SmartCodeGenerator.ucBaseDocument  -   5        (  Name$( InitNewDocument��5�   7   $% New Document��6Q   )   DocType$) CodeDocument=�6f   .��5�   &   '	  !ICSharpCode.AvalonEdit.TextEditor	  * 	  
IsReadOnly* .  $��Consolas)�6Q   $
��10pt(�6h   + 	  SyntaxHighlightingM
  GICSharpCode.AvalonEdit.Highlighting.HighlightingDefinitionTypeConverter$	+ XML
 6z   , 	  Text., 6�   5�   '   5�   #   5�      5�      5�        5�      $	# 280 �6'   $" Vertical=�6J   .+�5�        .@�5�      +  %SmartCodeGenerator.ucSolutionExplorer  -   5        -  Name$- lucSolutionExplorer��5�   8   $% Solution Explorer��6U   6q   5�        5�      .@�5�      ,  &SmartCodeGenerator.ucParameterExplorer  -   5        .  Name$. lucDocumentProperties��5�   8   $% Document Properties��6W   /   IsCloseable/ . 6�   5�      5�      5�      5�      �� 5�      $��3��6   $��2��6%   .@�5�      �� .��5�      �� 0 �� Orientation$0 
Horizontal=�6!   .+�5�      �� $��A��6$   $��Center=�6-   �� 5�      -    5        1 ��Name$1 
zoomSlider��5�   !   $��Center=�65   2 � Value$2 1Q�6P   3 �� IsSnapToTickEnabled3 . 4 �� TickFrequency$	4 0.2Q�6u   5 �� TickPlacement$
5 Both=�6�   6 � Minimum$	6 0.5Q�6�   7 � Maximum$7 3Q�6�   8 � SmallChange$	8 0.5Q�6�   9 � LargeChange$	9 0.5Q�6�   $	��100��6�   �� 5�      $��A��6$   $��20(�6-   $��Center=�6;   5�      5�      5�      5�      5�      5�      