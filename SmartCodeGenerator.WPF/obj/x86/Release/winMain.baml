   M S B A M L   `   `   `  ���� T  PAvalonDock, Version=1.3.3590.0, Culture=neutral, PublicKeyToken=85a1e0ada7ec13e4;,clr-namespace:AvalonDock;assembly=AvalonDock
AvalonDock  M ISmartCodeGenerator, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null7 clr-namespace:SmartCodeGeneratorSmartCodeGenerator     SmartCodeGenerator.winMain   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35^ ZWindowsFormsIntegration, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     ;ad,clr-namespace:AvalonDock;assembly=AvalonDock     ` \ICSharpCode.AvalonEdit, Version=4.0.0.5950, Culture=neutral, PublicKeyToken=9cc39be672370310?
avalonEdit.http://icsharpcode.net/sharpdevelop/avalonedit  ,local clr-namespace:SmartCodeGenerator    � Title$  Smart Code Generator 1.0�� � Icon$ images/Logo.png��$	��720��$
��1000�� � WindowStartupLocation$ CenterScreen=� � WindowState$ 	Maximized=� � WindowStyle$ ThreeDBorderWindow=� � 	Resources    transparentColor �� EndPoint �� 
StartPoint � Color	 � Offset  thumbnailBackground
 �� ImageSource  statusBarItemStyle �� 
TargetType �� Triggers P� Property P� Value �� Property �� Value O� 	GlowColor O� GlowSize O� Noise O� Opacity  shortcutItemStyle��%�  &	        &	 b     &	 �     &	      7   �� $ 0.5,1&�$ 0.5,0&�.��� $ 	#2FFFFFFF��$	 0.469Q�� $ 	#2FFFFFFF��$	 0.498Q��� $
 Images\thumbnail.jpg���� " �� P�  �@J�IsMouseOver . . ���  � �� �� $ 0.514,0.821&�$ 0.514,0.228&�.��� $ 	#FF000000��$	 0Q�� $ 	#FF000000��$	 1Q���  �@J�BitmapEffect O� $ Green��$ 20Q�$	 0.5Q�$	 0.4Q���  �@J�OpacityMask �� $ 
0.025,0.49&�$ 0.971,0.491&�.��� $ 	#8FFFFFFF��$	 0.469Q�� $ 	#8FFFFFFF��$	 0.498Q��� " ��.���  � ��$ 2q���  �@��CornerRadius$ 5����  � ��$ 80�� P�  �@J�IsMouseOver . . ���  � ��8   .��]� .+��  � ColumnDefinitions �� $
��218* ��� $
��760* � � RowDefinitions �� $��28 ��� $��32 ��� �� $��32 �.+�o� $��0��$��2��.@�m� $
��File��$��12(�$��28��$��Center=�.@�m� -   $	��New��m� -   $
��Open���� m� -   $
��Save��m� $��Project��.@�m� -   $��Open Project���� m� -   $��Add Doc to Project��m� -   $��Remove Doc from Project��m� $
��View��.@�m� -   $��Show Explorer������ *DockableContents+ �� ElementName$ DockManager������ .R��� ���� *Title+�� m� -   $��	View Docs������ *	Documents+$ DockManager������ .R��� ���� *Title+m� -	   $��Close All Docs������ .R��� $��Close All Docs��m� $��Themes��$��12(�$��28��$��Center=�.@�m� -
   $��Classic��
 � Tag$ classic��m� -   $��Generic��$ generic��m� $
��Help��.@�m� -   $ ��About Smart Code Generator��c� $��1��$��2��.@��� -   $��btnProjOpen�� � ToolTip$ Open Project��$��28��$��28��$
��Left=� � Cursor$
 Hand������ $��Images/OpenProj.png���� -   $��
btnProjNew��$ New Project��$��28��$��28��$
��Left=�$
 Hand������ $!��Images/SolutionTemplate.png���� -   $��
btnOpenDoc��$ Open Document��$��28��$��28��$
��Left=�$
 Hand������ $��Images/Open.png���� -   $��	btnNewDoc��$ New Document��$��28��$��28��$
��Left=�$
 Hand������ $��Images/New.png���� -   $��
btnSaveDoc��$ Save Document��$��28��$��28��$
��Left=�$
 Hand������ $��Images/Save.png���� -   $��btnDeleteDoc��$ Delete Document��$��28��$��28��$
��Left=�$
 Hand������ $��Images/Delete.png���� �� -   $��btnGenerateCode��$ Generate Code ��$��28��$��28��$
��Left=�$
 Hand������ -    ��Name$ 	imgSingle��$��Images/SingleGenerate.png���� -   $��btnBatchGenerateCode��$ Batch Generate Code ��$��28��$��28��$
��Left=�$
 Hand������ -   $ imgBatch��$��Images/BatchCode.png���� -   $��btnExceltoScript��$ Excel to Sql Script��$��28��$��28��$
��Left=�$
 Hand������ -   $ imgExceltoScript��$��Images/ExceltoScript.png���� �� -   $��btnDocAddToProj��$ Add Document to Project��$��28��$��28��$
��Left=�$
 Hand������ $��Images/AddToProj.png���� -   $��btnDocRemoveFromProj��$" Remove Document from Project��$��28��$��28��$
��Left=�$
 Hand������ $��Images/RemoveFromProj.png��   AvalonDock.DockingManager  -     Name$ DockManager��   IsAnimationEnabled . $��2��$��0,4,0,0q�$��2��   ActiveContent �� $ Content1�� � LayoutTransform ��   �� ScaleX  �� *Value+$ 
zoomSlider��! �� ScaleY! �� *Value+$ 
zoomSlider��.��   AvalonDock.ResizingPanel  "   Orientation$" 
Horizontal=�.+�  #   ResizeWidth$	# 280 �$" Vertical=�.+�   AvalonDock.DockablePane  .@�,  &SmartCodeGenerator.ucTemplatesExplorer  -   $  Name$$ lucTemplatesExplorer��   AvalonDock.ManagedContent%   Title$% Templates Explorer��  .@�)  #SmartCodeGenerator.ucServerExplorer  -   &  Name$& lucServerExplorer��$% Server Explorer��  $# * �$" Vertical=�.+�  $# 1* �$" Vertical=�.+�   AvalonDock.DocumentPane  -   '  Name$' DocumentHost��.@�'  !SmartCodeGenerator.ucBaseDocument  -   (  Name$( InitNewDocument��$% New Document��)   DocType$) CodeDocument=�.��'	  !ICSharpCode.AvalonEdit.TextEditor	  * 	  
IsReadOnly* .  $��Consolas)�$
��10pt(�+ 	  SyntaxHighlightingM
  GICSharpCode.AvalonEdit.Highlighting.HighlightingDefinitionTypeConverter$	+ XML
 , 	  Text.,   $	# 280 �$" Vertical=�.+�  .@�+  %SmartCodeGenerator.ucSolutionExplorer  -    -  Name$- lucSolutionExplorer��$% Solution Explorer��  .@�,  &SmartCodeGenerator.ucParameterExplorer  -!   .  Name$. lucDocumentProperties��$% Document Properties��/   IsCloseable/ . �� $��3��$��2��.@��� .���� 0 �� Orientation$0 
Horizontal=�.+��� $��A��$��Center=��� -"   1 ��Name$1 
zoomSlider��$��Center=�2 � Value$2 1Q�3 �� IsSnapToTickEnabled3 . 4 �� TickFrequency$	4 0.2Q�5 �� TickPlacement$
5 Both=�6 � Minimum$	6 0.5Q�7 � Maximum$7 3Q�8 � SmallChange$	8 0.5Q�9 � LargeChange$	9 0.5Q�$	��100���� $��A��$��20(�$��Center=�