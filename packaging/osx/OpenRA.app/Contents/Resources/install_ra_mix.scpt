FasdUAS 1.101.10   ��   ��    k             l     ����  r       	  l     
���� 
 n         1    ��
�� 
bhit  l     ����  I    ��  
�� .sysodlogaskr        TEXT  m        �   d O p e n R A   r e q u i r e s   d a t a   f i l e s   f r o m   t h e   o r i g i n a l   g a m e .  ��  
�� 
btns  J           m       �   & I n s t a l l   f r o m   F o l d e r      m       �    I n s t a l l   f r o m   C D   ��  m       �    Q u i t��    ��   !
�� 
dflt   m    	 " " � # #  Q u i t ! �� $ %
�� 
appr $ m   
  & & � ' '  O p e n R A % �� (��
�� 
disp ( m    ��
�� stic   ��  ��  ��  ��  ��   	 o      ���� 0 ret  ��  ��     ) * ) l     ��������  ��  ��   *  + , + l   N -���� - Z    N . /���� . =    0 1 0 o    ���� 0 ret   1 m     2 2 � 3 3 & I n s t a l l   f r o m   F o l d e r / k    J 4 4  5 6 5 r    ! 7 8 7 m    ����   8 o      ���� 0 success   6  9 : 9 V   " : ; < ; r   , 5 = > = I   , 1�������� *0 selectmixfromfolder SelectMixFromFolder��  ��   > o      ���� 0 success   < =  & + ? @ ? o   & )���� 0 success   @ m   ) *����   :  A�� A I  ; J�� B C
�� .sysodlogaskr        TEXT B m   ; > D D � E E N I n s t a l l   C o m p l e t e .   P l e a s e   r e s t a r t   O p e n R A C �� F G
�� 
disp F m   ? @��
�� stic    G �� H��
�� 
btns H m   A D I I � J J  O k��  ��  ��  ��  ��  ��   ,  K L K l     ��������  ��  ��   L  M N M l  O � O���� O Z   O � P Q���� P =  O T R S R o   O P���� 0 ret   S m   P S T T � U U  I n s t a l l   f r o m   C D Q k   W � V V  W X W r   W \ Y Z Y m   W X����   Z o      ���� 0 success   X  [ \ [ V   ] u ] ^ ] r   g p _ ` _ I   g l�������� "0 selectmixfromcd SelectMixFromCD��  ��   ` o      ���� 0 success   ^ =  a f a b a o   a d���� 0 success   b m   d e����   \  c d c I  v ��� e f
�� .sysodlogaskr        TEXT e m   v y g g � h h N I n s t a l l   C o m p l e t e .   P l e a s e   r e s t a r t   O p e n R A f �� i j
�� 
disp i m   z {��
�� stic    j �� k��
�� 
btns k m   |  l l � m m  O k��   d  n�� n l  � ���������  ��  ��  ��  ��  ��  ��  ��   N  o p o l     ��������  ��  ��   p  q r q i      s t s I      �������� *0 selectmixfromfolder SelectMixFromFolder��  ��   t k     � u u  v w v r      x y x I    	���� z
�� .sysostflalis    ��� null��   z �� { |
�� 
prmp { m     } } � ~ ~ d S e l e c t   f o l d e r   c o n t a i n i n g   m a i n . m i x   a n d   r e d a l e r t . m i x | �� ��
�� 
mlsl  m    ��
�� savono  ��   y o      ���� 0 	mixfolder 	mixFolder w  � � � r     � � � l    ����� � l    ����� � n     � � � 1    ��
�� 
psxp � o    ���� 0 	mixfolder 	mixFolder��  ��  ��  ��   � o      ���� 0 	mixfolder 	mixFolder �  � � � r     � � � I    �� ����� 60 fileexistscaseinsensitive FileExistsCaseInsensitive �  � � � o    ���� 0 	mixfolder 	mixFolder �  ��� � m     � � � � �  m a i n . m i x��  ��   � o      ���� 	0 found   �  � � � Z    8 � ����� � =    � � � o    ���� 	0 found   � m     � � � � �  n o � k   " 4 � �  � � � I  " 1�� � �
�� .sysodlogaskr        TEXT � m   " # � � � � � 0 C o u l d   n o t   f i n d   m a i n . m i x ! � �� � �
�� 
disp � m   $ %��
�� stic     � �� � �
�� 
btns � m   & ' � � � � �  O k � �� ���
�� 
appr � m   ( + � � � � � 
 E r r o r��   �  ��� � L   2 4 � � m   2 3����  ��  ��  ��   �  � � � r   9 D � � � I   9 B�� ����� 60 fileexistscaseinsensitive FileExistsCaseInsensitive �  � � � o   : ;���� 0 	mixfolder 	mixFolder �  ��� � m   ; > � � � � �  r e d a l e r t . m i x��  ��   � o      ���� 	0 found   �  � � � Z   E g � ����� � =  E J � � � o   E F���� 	0 found   � m   F I � � � � �  n o � k   M c � �  � � � I  M `�� � �
�� .sysodlogaskr        TEXT � m   M P � � � � � 8 C o u l d   n o t   f i n d   r e d a l e r t . m i x ! � �� � �
�� 
disp � m   Q R��
�� stic     � �� � �
�� 
btns � m   S V � � � � �  O k � �� ���
�� 
appr � m   W Z � � � � � 
 E r r o r��   �  ��� � L   a c � � m   a b����  ��  ��  ��   �  � � � I   h t�� ����� 20 copyfilecaseinsensitive CopyFileCaseInsensitive �  � � � o   i j���� 0 	mixfolder 	mixFolder �  � � � m   j m � � � � �  m a i n . m i x �  ��� � m   m p � � � � � 2 m o d s / r a / p a c k a g e s / m a i n . m i x��  ��   �  � � � I   u ��� ����� 20 copyfilecaseinsensitive CopyFileCaseInsensitive �  � � � o   v w���� 0 	mixfolder 	mixFolder �  � � � m   w z � � � � �  r e d a l e r t . m i x �  ��� � m   z } � � � � � : m o d s / r a / p a c k a g e s / r e d a l e r t . m i x��  ��   �  ��� � L   � � � � m   � ����� ��   r  � � � l     �������  ��  �   �  � � � i     � � � I      �~�}�|�~ "0 selectmixfromcd SelectMixFromCD�}  �|   � k     � � �  � � � r      � � � I    	�{�z �
�{ .sysostflalis    ��� null�z   � �y � �
�y 
prmp � m     � � � � � & S e l e c t   R e d   A l e r t   C D � �x ��w
�x 
mlsl � m    �v
�v savono  �w   � o      �u�u 0 	mixfolder 	mixFolder �  � � � r     � � � l    ��t�s � l    �r�q  n     1    �p
�p 
psxp o    �o�o 0 	mixfolder 	mixFolder�r  �q  �t  �s   � o      �n�n 0 	mixfolder 	mixFolder �  r     I    �m�l�m 60 fileexistscaseinsensitive FileExistsCaseInsensitive 	 o    �k�k 0 	mixfolder 	mixFolder	 
�j
 m     �  M A I N . M I X�j  �l   o      �i�i 	0 found    Z    8�h�g =    o    �f�f 	0 found   m     �  n o k   " 4  I  " 1�e
�e .sysodlogaskr        TEXT m   " # � 0 C o u l d   n o t   f i n d   m a i n . m i x ! �d
�d 
disp m   $ %�c
�c stic     �b
�b 
btns m   & '   �!!  O k �a"�`
�a 
appr" m   ( +## �$$ 
 E r r o r�`   %�_% L   2 4&& m   2 3�^�^  �_  �h  �g   '(' r   9 D)*) I   9 B�]+�\�] 60 fileexistscaseinsensitive FileExistsCaseInsensitive+ ,-, o   : ;�[�[ 0 	mixfolder 	mixFolder- .�Z. m   ; >// �00 ( I N S T A L L / R E D A L E R T . M I X�Z  �\  * o      �Y�Y 	0 found  ( 121 Z   E g34�X�W3 =  E J565 o   E F�V�V 	0 found  6 m   F I77 �88  n o4 k   M c99 :;: I  M `�U<=
�U .sysodlogaskr        TEXT< m   M P>> �?? 8 C o u l d   n o t   f i n d   r e d a l e r t . m i x != �T@A
�T 
disp@ m   Q R�S
�S stic    A �RBC
�R 
btnsB m   S VDD �EE  O kC �QF�P
�Q 
apprF m   W ZGG �HH 
 E r r o r�P  ; I�OI L   a cJJ m   a b�N�N  �O  �X  �W  2 KLK I   h t�MM�L�M 20 copyfilecaseinsensitive CopyFileCaseInsensitiveM NON o   i j�K�K 0 	mixfolder 	mixFolderO PQP m   j mRR �SS  M A I N . M I XQ T�JT m   m pUU �VV 2 m o d s / r a / p a c k a g e s / m a i n . m i x�J  �L  L WXW I   u ��IY�H�I 20 copyfilecaseinsensitive CopyFileCaseInsensitiveY Z[Z o   v w�G�G 0 	mixfolder 	mixFolder[ \]\ m   w z^^ �__ ( I N S T A L L / R E D A L E R T . M I X] `�F` m   z }aa �bb : m o d s / r a / p a c k a g e s / r e d a l e r t . m i x�F  �H  X c�Ec L   � �dd m   � ��D�D �E   � efe l     �C�B�A�C  �B  �A  f ghg i    iji I      �@k�?�@ 60 fileexistscaseinsensitive FileExistsCaseInsensitivek lml o      �>�> 0 ff  m n�=n o      �<�< 0 f  �=  �?  j L     oo I    �;p�:
�; .sysoexecTEXT���     TEXTp b     qrq b     sts b     uvu b     wxw b     	yzy b     {|{ b     }~} b     � m     �� ���  I N =� o    �9�9 0 ff  ~ m    �� ���  ` e c h o  | o    �8�8 0 f  z m    �� ��� �   |   t r   a - z   A - Z ` 
 	 f o r   i   i n   0   1 ;   d o 
 	 	 i f   [   - e   $ I N   ] ;   t h e n 
 	 	 	 e c h o   y e s 
 	 	 	 e x i t 
 	 	 f i 
 	 	 I N =x o   	 
�7�7 0 ff  v m    �� ���  ` e c h o  t o    �6�6 0 f  r m    �� ��� :   |   t r   A - Z   a - z ` 
 	 d o n e 
 	 e c h o   n o�:  h ��� l     �5�4�3�5  �4  �3  � ��� i    ��� I      �2��1�2 20 copyfilecaseinsensitive CopyFileCaseInsensitive� ��� o      �0�0 0 ff  � ��� o      �/�/ 0 f  � ��.� o      �-�- 0 tp  �.  �1  � L     �� I    �,��+
�, .sysoexecTEXT���     TEXT� b     ��� b     ��� b     ��� b     ��� b     ��� b     ��� b     	��� b     ��� b     ��� b     ��� m     �� ���  I N =� o    �*�* 0 ff  � m    �� ���  ` e c h o  � o    �)�) 0 f  � m    �� ��� �   |   t r   a - z   A - Z ` 
 	 f o r   i   i n   0   1 ;   d o 
 	 	 i f   [   - e   $ I N   ] ;   t h e n 
 	 	 	 c p   " $ I N "   "� o   	 
�(�( 0 tp  � m    �� ��� ( " 
 	 	 	 e x i t 
 	 	 f i 
 	 	 I N =� o    �'�' 0 ff  � m    �� ���  ` e c h o  � o    �&�& 0 f  � m    �� ��� (   |   t r   A - Z   a - z ` 
 	 d o n e�+  � ��%� l     �$�#�"�$  �#  �"  �%       �!�������!  � � �����  *0 selectmixfromfolder SelectMixFromFolder� "0 selectmixfromcd SelectMixFromCD� 60 fileexistscaseinsensitive FileExistsCaseInsensitive� 20 copyfilecaseinsensitive CopyFileCaseInsensitive
� .aevtoappnull  �   � ****� � t������ *0 selectmixfromfolder SelectMixFromFolder�  �  � ��� 0 	mixfolder 	mixFolder� 	0 found  � � }����� �� � ���� �� ��
�	 � � � � � � �� � �
� 
prmp
� 
mlsl
� savono  � 
� .sysostflalis    ��� null
� 
psxp� 60 fileexistscaseinsensitive FileExistsCaseInsensitive
� 
disp
� stic    
� 
btns
� 
appr�
 
�	 .sysodlogaskr        TEXT� 20 copyfilecaseinsensitive CopyFileCaseInsensitive� �*����� E�O��,E�O*��l+ E�O��  ������a a  OjY hO*�a l+ E�O�a   a ���a �a a  OjY hO*�a a m+ O*�a a m+ Ok� � ������� "0 selectmixfromcd SelectMixFromCD�  �  � ��� 0 	mixfolder 	mixFolder� 	0 found  � � �� ���������������� ��#����/7>DGRU��^a
� 
prmp
�  
mlsl
�� savono  �� 
�� .sysostflalis    ��� null
�� 
psxp�� 60 fileexistscaseinsensitive FileExistsCaseInsensitive
�� 
disp
�� stic    
�� 
btns
�� 
appr�� 
�� .sysodlogaskr        TEXT�� 20 copyfilecaseinsensitive CopyFileCaseInsensitive� �*����� E�O��,E�O*��l+ E�O��  ������a a  OjY hO*�a l+ E�O�a   a ���a �a a  OjY hO*�a a m+ O*�a a m+ Ok� ��j���������� 60 fileexistscaseinsensitive FileExistsCaseInsensitive�� ����� �  ������ 0 ff  �� 0 f  ��  � ������ 0 ff  �� 0 f  � �������
�� .sysoexecTEXT���     TEXT�� �%�%�%�%�%�%�%�%j � ������������� 20 copyfilecaseinsensitive CopyFileCaseInsensitive�� ����� �  �������� 0 ff  �� 0 f  �� 0 tp  ��  � �������� 0 ff  �� 0 f  �� 0 tp  � ��������
�� .sysoexecTEXT���     TEXT�� �%�%�%�%�%�%�%�%�%�%j � �����������
�� .aevtoappnull  �   � ****� k     ���  ��  +��  M����  ��  ��  �  �  ��   �� "�� &������������ 2���� D I�� T�� g l
�� 
btns
�� 
dflt
�� 
appr
�� 
disp
�� stic   �� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 ret  �� 0 success  �� *0 selectmixfromfolder SelectMixFromFolder�� �� "0 selectmixfromcd SelectMixFromCD�� ������mv������� �,E�O��  3jE` O h_ j *j+ E` [OY��Oa ���a a  Y hO�a   5jE` O h_ j *j+ E` [OY��Oa ���a a  OPY h ascr  ��ޭ