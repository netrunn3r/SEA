   M S B A M L   `   `   `  ����I  Efake_installer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=nullC&clr-namespace:FakeSilverlightInstallerFakeSilverlightInstaller  5   	   )    #FakeSilverlightInstaller.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   8local&clr-namespace:FakeSilverlightInstaller     5   	   -   5          � Title$  	Installer��5   	   $	��359��6   $	��560��6(   ���	#FFC6E5F7 � WindowStyle$
 None=�5	   	    � 
ResizeMode$ NoResize=�5
   	   .��5      � .+�5   
   �� $
��Left=�6   $��1,1,0,0q�6+   $��silverlight_logo.png��6<   $
��None=�6Z   $	��Top=�6i   �� 5   
   -   5        $��X��5      $
��Left=�6   $��
537,10,0,0q�68   $	��Top=�6L   $��13��6d   $��13��6o   $
��10.2(�6{   ���	#FF555555���	#FFEEEEEE$��0q�6�   $��Arial)�6�   6�   � 5   
   -   5         �Name$ page1��5      .+�5      �� $
��Left=�6   $��
256,31,0,0q�63   $
��Wrap=�6G   $��Install Silverlight��6[   $	��Top=�6v   $
��Bold"�6�   $��Tahoma)�6�   $��17(�6�   �� 5      $
��Left=�6   $��
256,84,0,0q�63   $
��Wrap=�6G   $S��MBy clicking                     you accept the Silverlight license agreement.��6[   $	��Top=�6�   $��Tahoma)�6�   $
��10.6(�6�   $	��273��6�   �� 5      $
��Left=�6   $��
308,84,0,0q�63   $
��Wrap=�6G   $��Install now��6[   $	��Top=�6n   $
��Bold"�6�   $��Tahoma)�6�   $��11(�6�   �� 5      $
��Left=�6   $��256,152,0,0q�63   $
��Wrap=�6H   $(��"Silverlight updates automatically.��6\   $	��Top=�6�   $��Tahoma)�6�   $
��10.8(�6�   �� 5      $
��Left=�6   $��257,116,0,0q�63   $
��Wrap=�6H   $	��Top=�6\   $��13(�6t   $��Tahoma)�6�   �� 5      -   5         ��Name$ HyperlinkLicense��5      $S��Mhttps://www.microsoft.com/getsilverlight/get-started/install/license-win.aspx?�66   .�6�   (&View the Silverlight License Agreement5      5      �� 5      $
��Left=�6   $��257,169,0,0q�63   $
��Wrap=�6H   $	��Top=�6\   $
��13.1(�6t   $��Tahoma)�6�   �� 5      -   5        $ HyperlinkPrivacy��5      $W��Qhttps://www.microsoft.com/GetSilverlight/locale/en-us/html/privacy_2.0.30916.html?�66   .�6�   (&View the Silverlight Privacy Statement5      5      �� 5      $
��Left=�6   $��257,284,0,0q�63   $
��Wrap=�6H   $	��Top=�6\   $
��11.6(�6t   $��Tahoma)�6�   �� 5       -   5        $ HyperlinkService��5       $8��2https://www.microsoft.com/en-US/servicesagreement/?�66   .�6�   Microsoft Service Agreement5"      5#      �� 5$      $
��Left=�6   $��257,304,0,0q�63   $
��Wrap=�6H   $	��Top=�6\   $
��12.1(�6t   $��Tahoma)�6�   �� 5%      -   5        $ HyperlinkPrivacyPolicy��5%      $:��4https://privacy.microsoft.com/en-us/privacystatement?�6<   .�6�   Privacy Policy5'      5(      �� 5*      -   5         ��Name$ ButtonInstallNow��5*      $��Install now��6/   $
��Left=�6E   $��469,333,0,0q�6`   $	��Top=�6u   $��73��6�   ���	#FF0078D7$��Tahoma)�6�   $��11(�6�   $��18��6�   6�   5+      � 5-   
   -	   5        $ page2��5-      $y�Hidden=�6   .+�5.      �� $
��Left=�6   $��
256,31,0,0q�63   $
��Wrap=�6G   $6��0Silverlight is being installed on your computer.��6[   $	��Top=�6�   $��Tahoma)�6�   $��17(�6�   $
��Bold"�6�   �� 5/      -
   5         ��Name$ txtInstalling��5/      $
��Left=�6/   $��256,255,0,0q�6J   $
��Wrap=�6_   $��Installing...��6s   $	��Top=�6�   $��Tahoma)�6�   $��17(�6�   50      � 52   
   -   5        $ page3��52      $y�Hidden=�6   .+�53      �� $
��Left=�6   $��
256,31,0,0q�63   $
��Wrap=�6G   $��Installation successful��6[   $	��Top=�6z   $��Tahoma)�6�   $��17(�6�   $
��Bold"�6�   �� 54      $
��Left=�6   $��256,115,0,0q�63   $
��Wrap=�6H   $Q��KYou may have to refresh (F5) the Web page for these changes to take effect.��6\   $	��Top=�6�   $��Tahoma)�6�   $��15(�6�   $	��269��6�   �� 56      -   5        $ ButtonClose��56      $��Close��6*   $
��Left=�6:   $��469,333,0,0q�6U   $	��Top=�6j   $��73��6�   ���	#FF0078D7$��Tahoma)�6�   $��11(�6�   $��18��6�   6�   57      �� 59   
   $
��Left=�6   $��
244,1,0,-1q�6+   $	��Top=�6?   $��silverlight_bg.png��6W   $
��None=�6s    K� ZIndex$ -2��6�   $y�Hidden=�6�   5;      5<      