   M S B A M L   `   `   `  ����L  HNoggoNoggoResizer, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null5clr-namespace:NoggoNoggoResizerNoggoNoggoResizer  5   	   "    NoggoNoggoResizer.MainWindow   5   	   \ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   1localclr-namespace:NoggoNoggoResizer     5   	     � Title$  NoggoNoggo Image Resizer��5   	   $	��193��5	   	   $	��543��6    � 
ResizeMode$ NoResize=�5
   	   .��5      � .+�5   
   �� $��Path:��6   $
��Left=�6    $��	10,10,0,0q�6;   $	��Top=�6N   �� 5   
   -   5         ��Name$ 
TxtBoxPath��5      $��Stretch=�6&   $��23��6D   $��
51,14,38,0q�6P    �� TextWrapping$
 Wrap=�6d   $	��Top=�6x    �� 
IsReadOnly . $��2��6�   �� 5   
   -   5         ��Name$ BtnOpenFile��5      $	��...��6&   $��Right=�64   $��	0,14,10,0q�6P   $	��Top=�6c   $��23��6{   $��23��6�   $��1��6�   �� 5   
   $��Height:��6   $
��Left=�6"   $��	10,62,0,0q�6=   $��50��6P   $	��Top=�6[   �� 5   
   $��Width:��6   $
��Left=�6!   $��	10,93,0,0q�6<   $��50��6O   $	��Top=�6Z   �� 5   
   -   5         ��Name$ 	LblHeight��5      $��height12345��6#   $
��Left=�69   $��	63,62,0,0q�6T   $��84��6g   $	��Top=�6r   �� 5   
   -   5        $ LblWidth��5      $��width123456��6"   $
��Left=�68   $��	63,93,0,0q�6S   $��84��6f   $	��Top=�6q   �� 5   
   $��x��6   $��Center=�6   $��222,62,300,0q�69   $��15��6O   $	��Top=�6Z   �� 5   
   $��x��6   $��Center=�6   $��222,93,300,0q�69   $��15��6O   $	��Top=�6Z   �� 5   
   -   5        $ TxtBoxFactorHeight��5      $��Center=�6.   $��23��6K   $��249,66,238,0q�6W   $
 Wrap=�6m   $��1��6�   $	��Top=�6�   $��50��6�   6�   �� 5   
   -   5        $ TxtBoxFactorWidth��5      $��Center=�6-   $��23��6J   $��249,97,238,0q�6V   $
 Wrap=�6l   $��1��6�   $	��Top=�6�   $��50��6�   6�   �� 5   
   $��New Height:��6   $��Right=�6&   $��
0,62,102,0q�6B   $��74��6V   $	��Top=�6a   �� 5   
   $��
New Width:��6   $��Right=�6%   $��
0,93,102,0q�6A   $��74��6U   $	��Top=�6`   �� 5   
   -   5        $ 
LblNHeight��5      $��newHeight12��6$   $��Right=�6:   $��	0,62,13,0q�6V   $��84��6i   $	��Top=�6t   �� 5   
   -   5        $ 	LblNWidth��5      $��newWidth123��6#   $��Right=�69   $��	0,94,13,0q�6U   $��84��6h   $	��Top=�6s   �� 5   
   -	   5        $ 	BtnResize��5      $��Resize��6$   $��Stretch=�65   $��
10,0,10,10q�6S   $��Bottom=�6g   6�   5!      5"      