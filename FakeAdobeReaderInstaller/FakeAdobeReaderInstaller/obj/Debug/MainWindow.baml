   M S B A M L   `   `   `  ����V  Rfake_adobe_reader_installer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:FakeAdobeReaderInstallerFakeAdobeReaderInstaller  5   	   )    #FakeAdobeReaderInstaller.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:FakeAdobeReaderInstaller     5   	   -   5          � Title$'  !Adobe Acrobat Reader DC Installer��5   	   $	��380��63   $	��620��6@    � 
ResizeMode$ CanMinimize=�5	   	    � Icon$ acrobat_logo_icon.png��6"    � 	Resources 5
         ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border  ProgressBarStyle1 �� 
TargetType �� Property �� Value �� 
TargetType	 �Name'  !System.Windows.VisualStateManager
   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value �� CornerRadius ��Name �� RadiusX �� RadiusY J� RenderTransformOrigin �� Triggers P� Property P� Value �� 
TargetName �� Angle��%v  &	        &	 #     &	 F     &	 i     7   7  7  �� 5   
   $ 	#FF06B025��67   �� 5   
   $ 	#FFE6E6E6��69   �� 5   
   $ 	#FFBCBCBC��65   �� 5   
   " �6*   .�5      ��  � ��8   6+   �� 5       � ��8  6+   �� 5       � ��8  6,   �� 5       � ��$ 1q�60   �� 5       � �� 5      �� 5      " �6&   .R�5      � $	 TemplateRoot��6   
 5        5   "   CommonStates��. 5   &     Determinate��62     5   &   Indeterminate��. 5   *   �� $ Forever��65   .��5   .   U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�6L   $ 	Animation��6�   .\�5   2     $ 0��6G   $
 0.25Q�6S     5   2   $ 0:0:1��6G   $
 0.25Q�6W     5   2   $ 0:0:2��6G   $
 0.25Q�6W   5    /   *� 5!   .   $' !(UIElement.RenderTransformOrigin)�6K   $ 	Animation��6�   .'�5"   2     $ 0��6F   $ -0.5,0.5&�6R     5#   2   $ 0:0:1��6F   $ 0.5,0.5&�6V     5$   2   $ 0:0:2��6F   $ 1.5,0.5&�6V   5%   /   5&   +   5'   '   5(   #   .+�5*      �� #��z��6%   #��z��6Q   #��z��6�   $ 10��6�   �� 5+      $ 
PART_Track��6(   � 5,      $	 PART_Indicator��6#   }�. $
��Left=�6O   .+�5-   "   �� $ 	Indicator��6,   #��z��6?   $ 10��6c   $ 10��6p   �� 5.   "   $ 	Animation��6,   #��z��6?   $ 0.5,0.5&�6c   $ 10��6�   $ 10��6�   z�5/   &   V� 50   *   .~�51   .   �� �� 52   .   �� 53   .   T� 54   .   55   +   57   #   58      59       5:      P� 5;       �@�Orientation$ Vertical=�6=   . �5<   "   �� $ TemplateRoot��6D    �@�LayoutTransform 5=   &   �� 5>   *   $	 -90Q�6:   5@   #   5A      P� 5B       �@�IsIndeterminate . . �5C   "   �� $ 	Indicator��6?    � y�$ 	Collapsed=�6V   5D      5F      5H      5I      5J      ��5L      �� 5M   
    �� EndPoint$ 0.5,1&�6    �� 
StartPoint$ 0.5,0&�6/   .��5N      �   � Color$  	#FFACACAC��6   ! � Offset$! 0Q�6-   � 5O      $  	#FFF4F4F4��6   $! 1Q�6-   5P      .��5R      � .+�5S   
   � -   5        $	 page1��5S      $y�Visible=�6   .+�5T      �� -   5        " ��Name$" image��5T      $
��Left=�6#   $��	32,50,0,0q�6>   $	��Top=�6Q   $��a1a.png��6i   $
��None=�6z   # K� ZIndex$# -1��6�   $y�Hidden=�6�   �� 5U      -   5        $ ��Name$$ 	textBlock��5U      $
��Left=�6+   $��	50,61,0,0q�6F   $
��Wrap=�6Y   $��Adobe Acrobat Reader DC��6m   $	��Top=�6�   $
��Bold"�6�   $
��16.6(�6�   $��Global Sans Serif)�6�   �� 5V      -   5        $$ 
textBlock2��5V      $
��Left=�6,   $��	50,90,0,0q�6G   $
��Wrap=�6Z   $��Preparing to Install...��6n   $	��Top=�6�   $��Global Sans Serif)�6�   $��14(�6�   5X      � 5Y   
   -   5        $	 page2��5Y      $y�Hidden=�6   .+�5Z      �� -   5        $" image2��5Z      $
��Left=�6$   $��	32,50,0,0q�6?   $	��Top=�6R   $��a2a.png��6j   $
��None=�6{   $# -1��6�   $y�Hidden=�6�   �� 5[      -   5        $$ 
textBlock3��5[      $
��Left=�6,   $��
111,70,0,0q�6G   $
��Wrap=�6[   $��Adobe Acrobat Reader DC��6o   $	��Top=�6�   $
��Bold"�6�   $
��14.6(�6�   $��Global Sans Serif)�6�   �� 5\      -	   5        $$ 	txtStatus��5\      $
��Left=�6+   $��
303,70,0,0q�6F   $
��Wrap=�6Z   $��Downloading...��6n   $	��Top=�6�   $��Global Sans Serif)�6�   $
��14.2(�6�   $��Italic$�6�   � 5^      -
   5        % �Name$% prgbar��5^      $��21��6*   ���	#FF434343& � Value$	& 100Q�6M   #���  6Y   $��108,90,38,0q�6�   $	��Top=�6�   ��5_      �� 5`      $	 0,0&�6*   $	 0,1&�69   .��5a      � $  	#FF1E89BA��6'   $! 0Q�69   � 5b      $  	#FF37B9F2��6'   $! 1Q�69   5c      5e      �� 5f      -   5        $$ txtInstalling��5f      $	��00%��6/   ���	#FFECECEC$��538,0,0,233q�6Q   $��16��6f   $��Bottom=�6r   $
��Left=�6�   $��23��6�   �� 5h      -   5        $" image3��5h      $
��Left=�6$   $��	47,70,0,0q�6?   $	��Top=�6R   $��acrobat_logo_s.png��6j   $# -1��6�   $y�Visible=�6�   $��46��6�   $��46��6�   $
��Fill=�6�   �� 5i      -   5        $" imgTick��5i      $
��Left=�6%   $��
576,93,0,0q�6@   $	��Top=�6T   $��
tick_s.png��6l   $# -1��6�   $y�Visible=�6�   $��15��6�   $��15��6�   �� 5j      -   5        ' ��Name$' 	btnFinish��5j      $
��Left=�6(   $��383,285,0,0q�6C   $	��Top=�6X   ��6p   Z� ��6�   Z� ��6�   Z� ��5l      � 5m      .+�5n      �� $ 5��6$   $ 5��60   $��41��6=   $	��200��6I   ���	#FFAFAFAF��5o      �� 5p   "   $ 0.5,1&�66   $ 0.5,0&�6G   .��5q   &   � $  	#FFFED614��63   $! 0Q�6E   � 5r   &   $  	#FFFBAF17��63   $! 1Q�6E   5s   #   5u      �� 5v      $��Finish��6$   $# 1��62   $��Center=�6C   $��Center=�6`   ���	#FF555555$
��Bold"�6�   $��Global Sans Serif)�6�   $��18(�6�   5w      ��5y      �� 5z      " ��6   ( �� Triggers( 5{      P� 5|       �@J�IsMouseOver . . �5}   "   ��  � ��$ 0q�6D   5~      5�      5�      �� 5�      -   5        $" image1��5�      $y�Hidden=�6$   $
��Left=�68   $	��100��6S   $��332,255,-20,-4q�6`   $	��Top=�6x   $	��302��6�   $��a4a.png��6�   $
��None=�6�   $# -1��6�   5�      5�      5�      