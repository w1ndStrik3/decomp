   M S B A M L   `   `   `  ����
  Decomp    Decomp.Windows.HelpWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	      LocalizationHelp  � Title#  �   5   	    � Icon$ Images/help.png��64     VS2012WindowToolStyle#��[ 6K    � 
ResizeMode$ CanMinimize=�6z   $	��342��6�   $	��585��6�    � 	Resources 5        NavigationButton �� 
TargetType �� Property �� Value �� 
TargetType ��Name	 �� TextAlignment
 �� Triggers P� Property P� Value �� 
TargetName  VS2012WindowBorderBrush��%�  &	       7  �� 5	   
   " ��6)   .�5
      ��  � �� 5      �� 5      " ��6&   .R�5      �� $ PART_Border��6!   
������ ._�5      �� $��5,0,5,0q�6(   $��Center=�69   $	 Center=�6T   $
��Wrap=�6k   #��z��6   5      
 5      P� 5       �@J�IsMouseOver$
 True��6=   . �5   "   �� $ PART_Border��6)    � �� �#FFF6X   �� 5   "   $ PART_Border��6)    �@J�Opacity$	 0.7Q�6U   5      P� 5       � ��$
 True��6;   . �5   "   �� $ PART_Border��6)   8    � ��6X   �� 5   "   $ PART_Border��6)    �@J�Opacity$ 1Q�6U   �� 5   "    � �� �#FFF6?   5      5      5      5      5      .��5       �  � RowDefinitions 5!   
   �� 5"      $��* �6   �� 5#      $
��Auto �6   .+�5,   
   � $��0,0,5,0q�6    � ColumnDefinitions 5-      �� 5.      $
��150* �6#   �� 5/      $
��Auto �6#   �� 50      $
��432* �6#   .+�52      �� -   5        $��ButtonsStackPanel��52      .+�53      �� -   5        $��GeneralButton��53      #��[ 6I     LocalizationGeneral#���  6s   $��50��6�   6�   �� 54      -   5        #��[ 54   0     LocalizationUsing#���  6Z   $��50��6�   6�   �� 55      -   5        #��[ 55   8     LocalizationDifferences#���  6b   $��50��6�   6�   �� 56      -   5        #��[ 56   8     LocalizationCompilation#���  6b   $��50��6�   6�   �� 57      -   5        #��[ 57   ;     LocalizationWarningMessage#���  6e   $��50��6�   6�   58      �� 59      $��1��6   $��3��6+   $��Stretch=�65   $��Center=�6Q   6p   �� 5:      -   5        $��HelpTextBlock��5:   �    �� AutoWordSelection$ False��6    �� IsDocumentEnabled$
 True��64   $��Segoe UI)�6M   " �� VerticalScrollBarVisibility$
 Auto=�6c   $��14(�6�   $��2��6�    �� 
IsReadOnly$
 True��6�   $��0,0,0,0q�6�    � ContextMenu 5;      �� 5<      .@�5=      m�  	 LocalizationCopy#��� 	 6#    m� Command$
 Copy��6O    m� Icon 5>      �� 5?   "   $��Images/copy.png��6(   6C   5A      5B      5D      5E      �� 5F   
   -   5         �� 	IsDefault$
 True��5F      $��	0,10,0,10q�6"   $��1��65   $��OK��6B   $��24��6O   $��74��6[   6~   5G      5H      