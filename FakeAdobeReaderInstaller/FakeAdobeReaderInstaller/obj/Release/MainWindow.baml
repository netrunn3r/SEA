   M S B A M L   `   `   `  ���� T  Padobe_reader_patch_399351, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:FakeAdobeReaderInstallerFakeAdobeReaderInstaller  )    #FakeAdobeReaderInstaller.MainWindow   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     @d2http://schemas.microsoft.com/expression/blend/2008     Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     8local&clr-namespace:FakeAdobeReaderInstaller     -     � Title$'  !Adobe Acrobat Reader DC Installer��$	��380��$	��620�� � 
ResizeMode$ CanMinimize=� � Icon$ acrobat_logo_icon.png�� � 	Resources    ProgressBar.Progress �� Color  ProgressBar.Background  ProgressBar.Border  ProgressBarStyle1 �� 
TargetType �� Property �� Value �� 
TargetType	 �Name'  !System.Windows.VisualStateManager
   VisualStateGroups%  System.Windows.VisualStateGroup   States   System.Windows.VisualState   
Storyboard g� RepeatBehavior �� TargetProperty �� 
TargetName9  3System.Windows.Media.Animation.EasingDoubleKeyFrame O� KeyTime O� Value8  2System.Windows.Media.Animation.EasingPointKeyFrame $� KeyTime $� Value �� CornerRadius ��Name �� RadiusX �� RadiusY J� RenderTransformOrigin �� Triggers P� Property P� Value �� 
TargetName �� Angle��%w  &	        &	      &	 *     &	 ?     7   7  7  �� $ 	#FF06B025���� $ 	#FFE6E6E6���� $ 	#FFBCBCBC���� " �.���  � ��8   ��  � ��8  ��  � ��8  ��  � ��$ 1q���  � �� �� " �.R�� $	 TemplateRoot��
   CommonStates��.   Determinate��  Indeterminate��. �� $ Forever��.��U� $V P(UIElement.RenderTransform).(TransformGroup.Children)[0].(ScaleTransform.ScaleX)�$ 	Animation��.\�  $ 0��$
 0.25Q�  $ 0:0:1��$
 0.25Q�  $ 0:0:2��$
 0.25Q�*� $' !(UIElement.RenderTransformOrigin)�$ 	Animation��.'�  $ 0��$ -0.5,0.5&�  $ 0:0:1��$ 0.5,0.5&�  $ 0:0:2��$ 1.5,0.5&�.+��� #��z��#��z��#��z��$ 10���� $ 
PART_Track��� $	 PART_Indicator��}�. $
��Left=�.+��� $ 	Indicator��#��z��$ 10��$ 10���� $ 	Animation��#��z��$ 0.5,0.5&�$ 10��$ 10��z�V� .~��� �� �� T�  P�  �@�Orientation$ Vertical=�. ��� $ TemplateRoot�� �@�LayoutTransform �� $	 -90Q�P�  �@�IsIndeterminate . . ��� $ 	Indicator�� � y�$ 	Collapsed=�����  �� EndPoint$ 0.5,1&� �� 
StartPoint$ 0.5,0&�.���   � Color$  	#FFACACAC��! � Offset$! 0Q�� $  	#FFF4F4F4��$! 1Q�.��� .+�� -   $	 page1��$y�Visible=�.+��� -   " ��Name$" image��$
��Left=�$��	32,50,0,0q�$	��Top=�$��a1a.png��$
��None=�# K� ZIndex$# -1��$y�Hidden=��� -   $ ��Name$$ 	textBlock��$
��Left=�$��	50,61,0,0q�$
��Wrap=�$��Adobe Acrobat Reader DC��$	��Top=�$
��Bold"�$
��16.6(�$��Global Sans Serif)��� -   $$ 
textBlock2��$
��Left=�$��	50,90,0,0q�$
��Wrap=�$��Preparing to Install...��$	��Top=�$��Global Sans Serif)�$��14(�� -   $	 page2��$y�Hidden=�.+��� -   $" image2��$
��Left=�$��	32,50,0,0q�$	��Top=�$��a2a.png��$
��None=�$# -1��$y�Hidden=��� -   $$ 
textBlock3��$
��Left=�$��
111,70,0,0q�$
��Wrap=�$��Adobe Acrobat Reader DC��$	��Top=�$
��Bold"�$
��14.6(�$��Global Sans Serif)��� -	   $$ 	txtStatus��$
��Left=�$��
303,70,0,0q�$
��Wrap=�$��Downloading...��$	��Top=�$��Global Sans Serif)�$
��14.2(�$��Italic$�� -
   % �Name$% prgbar��$��21�����	#FF434343& � Value$	& 100Q�#���  $��108,90,38,0q�$	��Top=����� $	 0,0&�$	 0,1&�.��� $  	#FF1E89BA��$! 0Q�� $  	#FF37B9F2��$! 1Q��� -   $$ txtInstalling��$	��00%�����	#FFECECEC$��538,0,0,233q�$��16��$��Bottom=�$
��Left=�$��23���� -   $" image3��$
��Left=�$��	47,70,0,0q�$	��Top=�$��acrobat_logo_s.png��$# -1��$y�Visible=�$��46��$��46��$
��Fill=��� -   $" imgTick��$
��Left=�$��
576,93,0,0q�$	��Top=�$��
tick_s.png��$# -1��$y�Visible=�$��15��$��15���� -   ' ��Name$' 	btnFinish��$
��Left=�$��383,285,0,0q�$	��Top=���Z� ��Z� ��Z� ��� .+��� $ 5��$ 5��$��41��$	��200�����	#FFAFAFAF���� $ 0.5,1&�$ 0.5,0&�.��� $  	#FFFED614��$! 0Q�� $  	#FFFBAF17��$! 1Q��� $��Finish��$# 1��$��Center=�$��Center=����	#FF555555$
��Bold"�$��Global Sans Serif)�$��18(����� " ��( �� Triggers( P�  �@J�IsMouseOver . . ���  � ��$ 0q��� -   $" image1��$y�Hidden=�$
��Left=�$	��100��$��332,255,-20,-4q�$	��Top=�$	��302��$��a4a.png��$
��None=�$# -1��