   M S B A M L   `   `   `  ����O  Kmscorlib, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e0891&clr-namespace:System;assembly=mscorlibSystem  5   	   
 Decomp    Decomp.Windows.ErrorWindow   5   	   W SPresentationCore, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35e aSystem.Windows.Controls.Ribbon, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089R NWindowsBase, Version=8.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35F 9http://schemas.microsoft.com/winfx/2006/xaml/presentation     5   	   R NSystem.Xaml, Version=8.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   9system&clr-namespace:System;assembly=mscorlib     5   	     � 
ResizeMode$  NoResize=�5       � Title$ Error��5   	   $	��134��6   $	��526��6$      VS2012WindowStyle#��[  60    � 	Resources 5	        AnimatedExpanderButtonTemp �� 
TargetType ��Name �� Padding � ColumnDefinitions F�Name J� RenderTransformOrigin	 �� Angle
 ��Name �� Triggers P� Property P� Value N� EnterActions �� 
TargetName �� TargetProperty	 W� To g� Duration N� ExitActions  StretchyExpanderTemp d�Name � OverridesDefaultStyle d� 	IsChecked �� Path �� RelativeSource � LayoutTransform �� ScaleY��%�  &	       &	 �    7  �� 5
   
   " d�6=   .R�5      �� $ ExpanderButtonBorder��6   #��z��5      #��z��5      #��z��5      # z��5      $��0,0,0,3q�5      ._�5      �  5      �� 5      $
��Auto �6+   �� 5      $��* �6+   .+�5      �� 
������ $��2��5       A� 5      $��Circle��6   $��0��5      ���	#FF333333
�������$��20��5      $��20��5      $��Center=�5      $��Center=�5       F� 5"      $ Arrow��6   $��0��5#      "����@B `� � �D @KL � z `� 	���	#FF333333$��2��5&      $��Center=�5'      $��Center=�5(      $ 0.5,0.5&�5)      z�5+      �� 5,      $	 0Q�6.   5.      �� 5/      $
 HeaderContent��6'   $��1��50   '   $��4,0,0,0q�51   '   $��Content��52   '   53      54       55      P� 57       �@d�	IsChecked$
 TrueY�58       59      �� 5:      .��5;      �� .��5<   "   W� $ Arrow��62   $4 .(Path.RenderTransform).(RotateTransform.Angle)�5=   2    1805>   2   $ 0:0:0.4D�5?   2   5@      5A       5C      �� 5D      .��5E      �� .��5F   "   W� $ Arrow��62   $4 .(Path.RenderTransform).(RotateTransform.Angle)�5G   2    05H   2   $ 0:0:0.4D�5I   2   5J      5K      5M      5f      �� 5g   
   " 9�67   .R�5h      ]� .+�5i      d� $ ExpanderButton��6   $	��Top=�5j      8��  #��z��5l      $
 True��5n      $��1.5,0q�5o       5m      �� $ 
IsExpanded� �� *TemplatedParent+5p      �� 5q      $
 ExpanderContent��6#   $��Content��5r   #   $��Bottom=�5s   #    5u      �� 5v      $ 0Q�6)   5x      5y       5z      P� 5{       �@9�
IsExpanded$
 True��60    5|      �� 5}      .��5~      �� .��5   "   W� $ ExpanderContent��62   $@ :(ContentPresenter.LayoutTransform).(ScaleTransform.ScaleY)�5�   2    15�   2   $ 0:0:0.4D�5�   2   5�      5�       5�      �� 5�      .��5�      �� .��5�   "   W� $ ExpanderContent��62   $@ :(ContentPresenter.LayoutTransform).(ScaleTransform.ScaleY)�5�   2    05�   2   $ 0:0:0.4D�5�   2   5�      5�      5�      5�      5�      .��5�      � .+�5�   
   �� -   5         ��Name$ 
ErrorImage��5�      $��32��6$   $��32��60   $	��Top=�6;   $
��Left=�6S   $��	10,10,0,0q�6n   $��Images/error2.png��6�   �� 5�   
   -   5        $��FatalErrorTextBlock��5�      $��41��6/   $��
56,10,10,0q�6;   $
��Wrap=�6O   $	��Top=�6c   SQFatal error in the application. Please report author of the program about error. �� 5�   _   -   5        $.��(http://rusmnb.ru/index.php?topic=17294.0?�5�   i   .�6�   *(http://rusmnb.ru/index.php?topic=17294.06   5�      9� 5�   
   -   5        #��[ 5�      $��
10,51,10,8q�6D    9� ExpandDirection$
 Down=�6�     LocalizationAboutError#���  6�   ��5�      � 5�      .+�5�      �� -   5         ��Name$ InformationTextBlock��5�   �   $ �� HorizontalScrollBarVisibility$
 Auto=�6   " �� VerticalScrollBarVisibility$
 Auto=�6C   $	��140��6f     �� 
IsReadOnly$
  True��6v   .��6�   ! � ContextMenu! 5�      �� 5�      .@�5�   "   m�   LocalizationCopy#���  6+   " m� Command$
" Copy��6W   # m� Icon# 5�   &   �� 5�   *   $��Images/copy.png��60   6K   5�   #   5�      .��5�   /   5�      5�      5�      5�      5�      