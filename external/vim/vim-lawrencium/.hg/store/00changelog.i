         �   �        ��������
[I�]H�!Ar�^~�2]�            4�   �,dd4e2cea6cadd1c4b4b5eb93e9a073e833adcea1
Ludovic Chabant <l "@c �!.com>
1323376855 28800
doc/lawrencium.txt
plugin �vim

Initial commit     �     �   �          �����A���7M�/�|�D7
��            u6c2313a8c33bdbcb638a66f87a64223476db9323
Ludovic Chabant <ludovic@chabant.com>
1323378180 28800
.hgignore

Ignore generated doc tags.         �   �         ������f����	N>g�M����                   )   )054a4bf325dc716aa73f8350015e029d5ec0158c
   O   j   !1323378192 28800
README.markdown
   k   �   Added a README file.    �     �   �         �����Jw�%��d�t�@��Q�~P            u52e812096729a2fe69a2c4d9ae1603cfd9907ef8
Ludovic Chabant <ludovic@chabant.com>
1323378248 28800
README.markdown

Fixed links in README.    "     �   �         ������DnҒJ�l�4!aF�9��n                   )   )ee2a80c7893bfbf6cacdf904465282f9b7516322
   O   p   '1323393592 28800
plugin/lawrencium.vim
   q   �   HHgStatus now outputs to the location window.
Fixed some commands naming.    �     �   �         ����:O�A���N�s*y1����            4�   �,4f4630984a83ca12b540e8a573cba3a392a3fa1a
Ludovic Chabant <l "@c �Z.com>
1323407524 28800
plugin/lawrencium.vim

Use a hackish shortcut to get the current branch faster for �statusline.    �     �   �         ������=��4�m�?��~ Ѳ            4�     ) �I44e1d84b157c5f77d704a88fd48d1d93c927afe4
   O   `   $1323479533 28800
doc/lawrencium.txt0 �w   �   .Better hg-status window.
 �debug/tracing.    >     �   �         ������g���ؖ'��,���̈́�            4�   �,2cede2e58dbc6a8d6dc0dc321a9a1c1013dd1542
Ludovic Chabant <l "@c �.com>
1323500933 28800
ftdetect/hgcommit.vim astatus �plugin/lawrencium jsyntax@  > r
Added  � highlighting for , � window.         �   �         ����[�����5$LJ�hm���            4�   �,c316635625566295374433c3c89337768841daae
Ludovic Chabant <l "@c �-.com>
1323673476 28800
plugin/lawrencium.vim

Added 'Hg!' an
 �diff/Hgvdiff'.    �     �   �      	   �������4�\�#+�J}�SZ�~                   )   )dab0dd319ed3b4267aefa79c13a5e550517aa826
   O   `   1323716386 28800
   w   �   ,Added keyboard shortcuts to Hgstatus window.    /     �   �   
   
   	����}M@��nŦ�ś�F�����            4�   �,a41eeb30b99c373c8b35a0255532464269926a31
Ludovic Chabant <l "@c �0.com>
1323725364 28800
plugin/lawrencium.vim

Added 'Hgcommit'  Pand ( �this very change is ) �ted with it!).    �     �   �   
      
�������
J���T�Q�T��                   )   )ecd37630d4ca9cc0ba1a5e7ab72678b281e0c47a
   O   `   1323732080 28800
   w   �   iMade most regex use the 'very-magic' syntax.
Temp windows (status, diff, etc.) delete the buffer on exit.    �     �   �         ������7�z3���)YRy�Dp�E            4�   �,6a1bd67bbcf3f5d120e247e80d6d64725748fa53
Ludovic Chabant <l "@c �9.com>
1323734355 28800
plugin/lawrencium.vim

Clean the 'HG:' lines from �commit message (apparently 'hg �
' doesn't do it with -o).    �     �   �         ����)�a�9���"�.�B̫���            uf74228bf59e3bac8734a7c8d1980a4ebf0d0ab12
Ludovic Chabant <ludovic@chabant.com>
1323736659 28800
doc/lawrencium.txt

Updated documentation.    	     �   �         �����hh��9;�F��ZOR                   )   )2213b0ba838b031dd6183c14ce4b316e059a1a4d
   O   s   '1323789684 28800
plugin/lawrencium.vim
   t   �   Better fold sections.    	�    :  �         �����.7󕮊7Q~m��Q��            4|    ) �6bcbc22efcc3a05702240f9c162b2a3896bf12fac
   O   `   1323824977 28800 v �Oresources/BeautifulSoup.py
 � GenerateHgUsage Ahg_u 0vim[ �2w   �   �Added ability to add files from the `hg status` window.
8 refresh1 g� `ion of( �` commands � �$, and used that for a better `:Hg` auto-completion.    
�     �   �         ����rOm����VqȍF9���a��            4�   �,ae4c2dfad660879de7ef7fe4258fb3f25185f239
Ludovic Chabant <l "@c �R.com>
1323825423 28800
plugin/lawrencium.vim

Don't show `hg commit` output if there's nothing to. �.
Fixed a regexp forB �status`.    �     �   �         ����\l`]`5i<-1�÷��]L0            u62abca20fbcd3bc76ae5d2a69c5173b4975ddf58
Ludovic Chabant <ludovic@chabant.com>
1323825488 28800
plugin/lawrencium.vim

Better output for `hg commit`.    6     �   �         ����O��R�ILIl�<�O�k�            4�     ) �61751233fb0f5080addbd3d13401f323e858d306f
   O   `   1323826214 28800 �w   �   MAbort commit if the �#message is empty.
Slightly better error reporting.    �     ~   }         ����uC�@#,n�JRy�^@����            u48a1366245ba7d7614c5b7bf3f27d5a50a4f3e67
Ludovic Chabant <ludovic@chabant.com>
1323826332 28800
.hgignore

Updated .hgignore.    ^     �   �         �����*6�C���;�$�J�l�                   )   )77405ee8850e1b4db4164c2a56c5e6bc0077137b
   O   j   $1323826550 28800
doc/lawrencium.txt
   k   }   Updated documentation.    �     �   �         ����Ь����+!���ot�k            u0937b4eb28b280df864af5872289c514304d7550
Ludovic Chabant <ludovic@chabant.com>
1323910331 28800
plugin/lawrencium.vim

Fixed multi-line output of `:Hg`.    ~     �   �         ������k�N���@�j��_��6c            4�     ) �Me65b3af62f2e966e1506a813fda96f51e92c67b5
   O   v   (1323932559 28800
resources/hg_usage.vim4 �w   �   #Fixed file format  / P.vim.         �   �         ����������@��>E�ꕾ���6            4�   �,977443eaf961f9c486fea0a32a7f0069f4627aa7
Ludovic Chabant <l "@c �B.com>
1324420385 28800
plugin/lawrencium.vim

Restore window settings when a diff �is closed.    �     �   �         ����!�y�� �i�oA�����hH                   )   )04545a9372fe9b160d55b37721fc94013c451a3d
   O   `   1324423551 28800
   w   �   NTrying to keep the cursor line when open an already opened file in `Hgstatus`.    h      9         �����+|y�TX��F z�b��            4     ) �6a25cc1fb69a0df7f8504b76c5c015acaa5486b22
   O   `   1324423942 28800 �Bw   �   �Fixed a bug with opening a diff from `Hgstatus`
When the previous window)   -  �was not a Lawrencium tracked$ ,; �	command would fail, or c �even use* �wrong repo.    s     �   �         �����X�K��sXǰ�̯Z����            4�   �,2468f18b1b75bd4cae8b2ed155128eb92d33046d
Ludovic Chabant <l "@c �R.com>
1324425695 28800
plugin/lawrencium.vim

Fixed completely wrong code that somehow almost ran. Pfine.    '     �   �         ����	[�U�4>�6C��^6ʷ`�            4�     ) �688cba6209ca97141f7600047d53c427fe846a689
   O   `   1324426295 28800 �*w   �   KFixed a bug with running `Hgedit` on a directory% pa trail( �backslash.    �     �   �         �����ڴ9�oDK��̜�[�\�            4�   �,2f346c133cfef35b94b445d091239e33a7cb3dbb
Ludovic Chabant <l "@c �@.com>
1324426511 28800
plugin/lawrencium.vim

`Hgcommit` now puts the cursor at �beginning of 4 � message.    �     q   p            �Z��ݧ�Q�n\S>�o            ud62bd5cfeba0dfce947032cc3e517b867b8ccaae
Ludovic Chabant <ludovic@chabant.com>
1324426612 28800

Merged changes.    �     �   �         ����5З�Q<9J� �װߍ��ƪ                   )   )8132ee05d989610f6d8131ecba089bd2ad3ac656
   O   `   '1324681630 28800
plugin/lawrencium.vim
   a   p   +Fixed a bug with the status line indicator.    �    Q  }         ����:{��d�L��m��O�Qb            4d    ) �I4b7c02d5ee69b6b864be911c2eeb469cb098ee57
   O   `   $1324881630 28800
doc/lawrencium.txt0 �8w   �   �Hgstatus window improvements and bug fixes:
- `addremove` comm! �replaces !`,5 �can run on a selection range.
- L� G �s are available (along with in the diff�  s)F � Default mappingC  opk  al! �Updated documentation.    �     �   �              y�{W�=�@G3��l��            u2a729114e1688394e7088772b9823c7258e44e70
Ludovic Chabant <ludovic@chabant.com>
1324881846 28800
plugin/lawrencium.vim

Merged changes.    o    ;  �       !    ���������l��5
5?�]T���            4m    ) �617d352c300b0b94fa45da27f0b72e704cfe1198e
   O   `   1325058530 28800 �w   �  Changes to the `Hgstatus` window:
- �,buffer is editable, and actions like `addremove` or `commitK �ll only
 1 1 onT �remaining filenames.
- added ability� :run[ �n a sele|   r� 9 "a � � ( �visual mode mappings.    �     �   �   "   "   !������_�z��-S���2�����9�            u660aeb620411c110378697116fdddfb235875403
Ludovic Chabant <ludovic@chabant.com>
1325059015 28800
doc/lawrencium.txt

Updated documentation.    5     �   �   #   #   "����Õ�)����-8�)Yׇ4`��            u88480a39ecb60848c5569989db482ef855478d5f
Ludovic Chabant <ludovic@chabant.com>
1325100293 28800
README.markdown

Updated README file.    �     |   �   #   $   #�������⪐�����!ۼ9�2V�                   )   )7d20ea278d560af8b5612f79ebede8c635997414
   O   `   1329176505 28800
   q   �   Fixed incorrect URL in README.    7     �   �   %   %   #�����a��夜�y�n�� 71�            u19e8c72b93148e19a60ffc62e53598259d53ba4d
Ludovic Chabant <ludovic@chabant.com>
1330060828 28800
plugin/lawrencium.vim

Added `Hgrevert` command.    �     �   �   %   &   %����������R�|�bx�~a5��                   )   )9472dbe49dc7adc935e19c5087f22dffaf39ead7
   O   v   $1330061056 28800
doc/lawrencium.txt
   w   �   &Updated documentation with `Hgrevert`.    _     q   p   '   '   &   $B��D�3�Ј��i+u���oH            u97574116ad7376d811a48287d4b6b9e87392f790
Ludovic Chabant <ludovic@chabant.com>
1330061148 28800

Merged changes.    �     �   �   '   (   '�����>��!jSRX�%Yk�WbB            4�     ) �P06668eb71903caf8338ec70570305fedcac93101
   O   `   :1333146550 25200
doc/lawrencium.txt
plugin 0vimF �	a   p   >Added `qnew` an �refresh` commands to the `Hgstatus` window.    �     �   �   )   )   (��������tۢ^-k�H��>�s�            u61a8da8d3573952ad8250f85956998085ebd0a5c
Ludovic Chabant <ludovic@chabant.com>
1344659607 25200
plugin/lawrencium.vim

Fixed problems with spaces in paths (thanks to @lllama).    ?     �   �   )   *   )����*���p�0��=᱇t(�6�                   )   )13c65e943671eb7bdeafdea6651243f1e8a2e7ca
   O   v   (1345006198 25200
resources/hg_usage.vim
   w   �   7Updated completion file to latest version of Mercurial.    �     �   �   +   +   *����� �eU��$j��~m�T>            4�   �,30502d8d04ffed6586ff69b4a9f76feba491fde1
Ludovic Chabant <l "@c �!.com>
1345008419 25200
doc/lawrencium.txt
plugin �?vim

Added auto cd'ing into the repo root for `:Hg`.
This can be disabled with3 `_ _T �_cd` global.    �     �   �   ,   ,   +��������\���]��pt��_%�U            ua31b50712b41932d0f3f39f049ac7b2631c0e66e
Ludovic Chabant <ludovic@chabant.com>
1345008592 25200
plugin/lawrencium.vim

Stop fucking with my brain, Python.    j     t   �   ,   -   ,�����
����ֳ�*�FΞ����g                   )   )163a667ff724461d313522f848234a0fa95b5967
   O   `   1346215073 25200
   w   �   Added `Hglog` command.    �    �     ,   .   -����jOR ��Bl�%��"���            4�    ) �I779298e81a8977071f42a6aca29b3ba7ddd710b9
   O   `   $1352301255 28800
doc/lawrencium.txt0 v �':resources/hg_command_file_types.vim
syntax/hggraphlog �   w   �  C`:Hg!` @ �E changes:
- Ability to edit in a normal buffer instead of the preview window.
- Set � � coloring accord
 !to7 �Mercurial�  : qUpdated! �documentation.
Miscellaneous cleanup.
New� �tty bann� ?  ( �"global settings" sec 4 tAdded `F`� Pfile.     �     �   �   /   /   -������<Y����/a8o���)�\�            4�   �+90c1ad6ace400cd7f0ba936c5f5ccf0997209513
Sylvain Soliman < . �8@m4x.org>
1352042003 -3600
plugin/lawrencium.vim

avoid conflicts with , �#s like minibufexplorer that might open a buffer wh �new one is created    !r    �  �   /   0   .   /���p�-*$��С��            4�    �1d   s3d09ddf8203ce098ef99892314155c95d76b08dc
Ludovic Chabant <l "@c �m.com>
1352411909 28800
doc/lawrencium.txt
   {   �  MLots of changes that should have gone in other commits (ugh):
- merged? �from @soliman
- removed the bang editF �jand setting. The preview windows is not really
  well suited for some things, so it's been replaced with a normal split
 a D ``Hg!` � �
`Hgstatus`.
- officialize 1log Rfixedz �problems on Windows.    #7    N     1   1   0������A�|rk���wsφ��`b            4  �,6fe0febf7e663067f10f8b3be55314a6d1cfc106
Ludovic Chabant <l "@c �!.com>
1352444744 28800
doc/lawrencium.txt
plugin evim

L �' files changes:
- Using double-slashes everywhere for @ �$paths.
- Added an `action=value` standard, to allowC �other things than revisionN qsupport1 r`diff` ] ..
! Ashow� �iffs in `Hglog` window.    $�     �   �   2   2   1��������� ��i&�sRouN�            u4b8673873677b14b95ace4d1c11387a364a270c5
Ludovic Chabant <ludovic@chabant.com>
1352469154 28800
resources/hg_command_file_types.vim

Fixed a bug initializing global setting.    %3      ,   2   3   2����g^�o�=f����3z�z            4)    ) �P7d30bed8d540e73892101b0df248710aaaa7f8db
   O   �   :1352575054 28800
doc/lawrencium.txt
plugin 0vimF �#�   �   �Added "diff summary" commands to use `hg " �` instead of Vim's ".
F �	documenation for the newP �.
Got ri@   � useless hard-coE �revision numbers.    &J     �   �   4   4   3������2l�Y���Nb��HY��            4�   �,0d45168a344754681d338399e93abe1cdf436260
Ludovic Chabant <l "@c �$.com>
1352601944 28800
plugin/lawrencium.vim

Use L �  files for displaying revisions in an `Hgdiff`.    &�     �     4   5   4�����ʦi<9�jmo��T����            4    ) �Gb71cb4501742065eaa086595bdf629641fe1762e
   O   `   "1352616826 28800
plugin/hglog.vim. v �(resources/hg_! �style
syntax4 �w   �   h`H �` window improvements:
- Using a better look �Mercurial c e file./ q � highlighting.    '�     �   �   6   6   5�����hSRn�(��>.����8            4�   �,3728af01f3687c49d189de74bfa57445d2a6b4ca
Ludovic Chabant <l "@c �.com>
1352658973 28800
ftplugin/hglog.vim
 �
Moving ` �` file type + T to `I �` directory where it belongs.    (�    1  �   6   7   6����jarA��r	����PG���5AX            4�    ) �Labcc1c1079953f317945a07c05aee1dd1d74ba1b
   O   �   '1352749076 28800
plugin/lawrencium.vim3 ��   �  %Improvements to L+ � paths:
- `parse_F _ �` only optionally converts:  N �absolute or relative
   �.
- Added ability1 Uget a+ ) Q from �po object; F`Get� P� 	�  O  4 -N �by default, but that can b� �overridden.

�`Hglog`:� 0`Hg]   � command� �Fixed clean-up problems.

MiscellaneouVPRemov� �uto-compleJ� �`Hgdiff` and 5suml � families sinc� 2the��allowed parameters are revis` �numbers/hashes/spec�FCode� �for `Hgdiff`.    *�     �   �   8   8   7����+?�-Tq�[!���3k�n6            u2ef3dc5aa71d0c65bc89a466cbcfb04f0ffc6fd0
Ludovic Chabant <ludovic@chabant.com>
1352767670 28800
doc/lawrencium.txt

Updated the documentation.    +e     �   �   8   9   8����"��b�m�򸸳��h�            4�     ) �L858d8f896660d520690f9e3b8911ba52b223934f
   O   s   '1352960186 28800
plugin/lawrencium.vim3 �t   �   }Fixes for L% � files:
- Move the cursor to atop of �
buffer.
- Insert stuff at �first line instead8 �below it.    ,O     �   �   :   :   9����b���H ����)��>&�            u84436a2d53fa02e06924dc310f35788e30766b66
Ludovic Chabant <ludovic@chabant.com>
1352960490 28800
plugin/lawrencium.vim

Added ability to show diff summaries from the status window.    -     �   �   :   ;   :����9m��iR<�<B��í�+�5x            4�     ) �61e83167c4e30ded2b0d0f0ed1c7a6b172b50e034
   O   `   1352961049 28800 v �syntax/hgannotate.vim" �w   �   Added `H" �` command.    -�     �   �   <   <   ;����}\�VY�'q�gZ]����            ua258649bd52f070c7c2c57b620d4fecc9925d716
Ludovic Chabant <ludovic@chabant.com>
1352961093 28800
doc/lawrencium.txt

Updated documentation.    ."    C  g   <   =   <�����yNH��9�������i�z            4d    ) �L8352f503eb1f24c76d26d6c957e4135648adbb0a
   O   s   '1353706988 28800
plugin/lawrencium.vim3 �&t   �   �Better way to handle buffer actions:
- Added �object with on delete/windows leave callbacks.> �helper funX  q �open andE � "dependency"o B �Using that new system� QdiffsN  � �y `Hgannotate`` �`Hglog`.    /e     �   �   >   >   =����k�����/�̻�|:xp�            u3512d516e3d30a7a7bfad7269d31ab990e707a29
Ludovic Chabant <ludovic@chabant.com>
1353707054 28800
plugin/lawrencium.vim

Disable folds in diff summaries.    /�     �   �   >   ?   >�������O��p�ܧ����4~h�            4�     ) �I1af4f38fc018eb53f60109c12f243737630f9281
   O   `   $1353709139 28800
doc/lawrencium.txt0 �w   �   (Using L! �	 buffers for `Hgstatus`.    0�     �   �   @   @   ?�����^��4�B�X�Ɵ%8d3�D��            u0ddd3f807f0944dbac4c2737ccb36fe907a5636c
Ludovic Chabant <ludovic@chabant.com>
1353709959 28800
plugin/lawrencium.vim

Display simple message when `Hgstatus` is empty.    1<    /  y   @   A   @������R��9n�%���l�            4`    ) �6a4a68f6ec0a5aecd982f8b7e7053bcd2397476c5
   O   `   1353775830 28800 �Bw   �  Made the `Hglog` window use Lawrencium buffers:
- Added support for `hg < (th6 �paths.
- Fix4 �ome bugs) �`delete_dependency_g � `.
Miscellaneouw �BufWinLeave` and �Unload` on� � objects.E  � �comments.    2k    '  L   B   B   A����u��	u���Gn�<=n^�:            4L  �,60c2caae6de2d3fbe7f74c55b33290808d6ed503
Ludovic Chabant <l "@c �!.com>
1353902434 28800
doc/lawrencium.txt
plugin �	vim

`Hglog` changes:
-  �	now list the history for �whole reposi .9 Qthis`9 s: �Acurrent file.
Fixed a bug with displaying diff summaries.
Updated documentation.    3�     �   �   C   C   B������JyG��o� �b�nt�|j            4�   �,32dbe1b01a51ec9f4093f82249a8ac1b4df0c849
Ludovic Chabant <l "@c �%.com>
1353992863 28800
plugin/lawrencium.vim

Made L � file easier to extend.    4,     ~   �   C   D   C����z���pb��;�^sI�!lE�                   )   )55e994952f860cb97d299b99e1af13e7f2b028d3
   O   `   1362546065 28800
   w   �    Added vertical `Hglog` commands.    4�     �   �   E   E   D�������C"�k�C J/���            u7380af9f2ad08b490eef0116b1f00b921af002e3
lmytinsk
1380119613 -14400
plugin/lawrencium.vim

Added return statement after calling s:error    52     �   �   E   F   E�����s���B�ϚW����X            4�     �1D   sb833ddef7833e727961566a7a2a2334ca708c47f
Ludovic Chabant <l "@c �A.com>
1384032017 28800
doc/lawrencium.txt
   [   �   Added `Hgvimgrep` command.    5�    9  d   E   G   F����������:+�b~7$!            4D    ) �efe91277e1bb84d06883235ec0aed �9a28c7c
   O   `   1392595216 28800 � �syntax/hgqseries.vim! ��   �   �MQ support:
- Added `H/ �` command to navigate 4 N  3 `bility! � go to, rename, 7 �edit the message of a patch= �Wrote documentation.

Fixed a bug withA �`Hgstatus` being `readonly`.    7     �   �   H   H   G������	MZ��Um<����            u5b11124cf23f77b010ac14e19deaabb8abbdcded
Ludovic Chabant <ludovic@chabant.com>
1392600678 28800
plugin/lawrencium.vim

Made the `Hgstatus` window refresh itself when needed.    7�      2   H   I   H����x]�l1ǡ�A5��Ґ.t�            4    ) �I5a99b72d2129b158b4e4fc6fdab1b5224ea002c5
   O   `   $1392618791 28800
doc/lawrencium.txt0 �Kw   �   �Changes and fixes to the `Hglog` window:
- Fixed a bug with showing diffs.
- Made=   � behaviour] �	commands more consistentK �those of
 } � status` window.    8�     �   �   J   J   I�����#�vCa���	� �b�Å�j�            ue45799f69ee470dbcbe8a47086968f5b359250a2
Ludovic Chabant <ludovic@chabant.com>
1392620094 28800
plugin/lawrencium.vim

Removed unnecessary option setting.    9i     �   �   J   K   J����l�T�T�@|GoT�~�#����                   )   )98653832d3777f359a7f9afebdb5e6729fd63a8e
   O   `   1392623549 28800
   w   �   dReverted some automatic `Hgstatus` window refresh.
Apparently Vim doesn't like what I'm doing. Sigh.    :+     �   �   L   L   K�����5ͥ�z���ٔk�M�c��            u15eecc08b2ca8eb764f7b704286920b3d7fab09e
Ludovic Chabant <ludovic@chabant.com>
1392623582 28800
plugin/lawrencium.vim

Bumped version to 0.3.0.    :�     �   �   L   M   L����W����5W�;���Zm\�                   )   )106cf5c1269043e1e5c5f41e4bd3e4e8dbedca4a
   O   v   1392623616 28800
.hgtags
   w   �   *Added tag 0.3.0 for changeset f535cda5d20e    ;K     �   �   N   N   M�����/�;J9jop�?MP�Ln��            ub5a269a2a38a79a1f895ca199dd2fea2d602d9b6
Ludovic Chabant <ludovic@chabant.com>
1392654930 28800
plugin/lawrencium.vim

Fixed some bugs with the `Hgqseries` window.    ;�     �   �   O   O   N������m����9�I2�\���
            ue0446923ea9cdcc611a23a7acea4a3dc742e4390
Ludovic Chabant <ludovic@chabant.com>
1392654968 28800
plugin/lawrencium.vim

Bumped version.    <v     �   �   O   P   O�����ȀڰJ����P
yj߸`S�                   )   )d65488f82adf77b4d908aa81d192f0e8f9ddc7bf
   O   v   1392654973 28800
.hgtags
   w   �   *Added tag 0.3.1 for changeset cac06d16dafc    =     �   �   Q   Q   P�����+c��wO��F�e��؟�            4�   �,1252dd074b56d72fa1389bfb68dc6c08f8ca5e62
Ludovic Chabant <l "@c �<.com>
1394180819 28800
plugin/lawrencium.vim

Fixed some bug with filenames � spaces in them.    =�     �   �   Q   R   Q����1�̧}��#\y������|n�                   )   )9680f8c2d1bb02bed567a3a0606a3487b9c9324d
   O   `   1394181095 28800
   w   �   *Re-edit a reverted file to see the change.    >7     �   �   S   S   R��������u��J��K���!�i�            ucef3683862c8e22e52bba3da696312e8d4087744
Ludovic Chabant <ludovic@chabant.com>
1394181726 28800
plugin/lawrencium.vim

Adding bookmark information to the status line.    >�     �   �   S   T   S�����+����:��a�I8��ZJ<            4�     ` �)a8742c2f78fd6af1e62bd0c0e1c515d6cbd08ca5
Shane Harper <s @ h �T.net>
1395393978 -39600
   w   �   vFix: blank line added by HgRepo.ReadCommandOutput().

The extra; �showed up as a change when running :Hgvdiff    ?�     �   �   U   U   S   T�,"o�eck��p:{9_�	�            4�   �,232a347a477b419f19bc532b8b0a7fa7bbb4763f
Ludovic Chabant <l "@c �q.com>
1398051001 25200 message:����

Merge pull request #1 from shaneharper/fix_blank_line_appended_to_hg_output

Fix: remove .  . � added by HgRepo.ReadCommandOutput().    @�     �   �   V   V   U����h]�KXb����ӫ5Z�K���            u2d735aea0607ce31fe4499bda5e2a19cfb098bc8
Ludovic Chabant <ludovic@chabant.com>
1398310594 25200
plugin/lawrencium.vim

Fix `Hgstatus` incorrectly saying nothing has changed.    Ai     �   �   V   W   V����戶X�[�یwWC@��u���                   )   )28fbabc19af7c4432b03879e317394f1b5a66133
   O   `   $1398314614 25200
doc/lawrencium.txt
   w   �   EAdd variants of existing commands that open things in a new tab page.    B     �   �   X   X   W�����Y�ҭ8���)ᔖʇC            ufe21ae677a335442211bf9c5d2c62532ee259668
Ludovic Chabant <ludovic@chabant.com>
1401660246 25200
plugin/lawrencium.vim

Correctly escape paths on Windows.    B�     q   �   X   Y   X�����qN��im1W6�U�����                   )   )fb3659bae4b91de9ddfda442b7f990a643aeded5
   O   `   1401662002 25200
   w   �   More path escaping!    C*     �   �   Z   Z   Y����wpc1
�y{����h�e�t5�            u19711e96ace32427793cbecfb66c57af323f4f95
Ludovic Chabant <ludovic@chabant.com>
1401921393 25200
plugin/lawrencium.vim

Check before cleaning any empty buffers left after new tab commands.    C�    �  h   Z   [   Z������'���d�k"y�2            4i    �/`   �b449bec22492d3930a2ec0f425cd1a3a46b36700
Kannan Rajah <kr �@maprtech.com>
1404605802 25200 committer:> � 1405190353> �
doc/lawrencium.txt
   w   �  �Newa �and to export a patch  �allow existing log1 �take options.

* HglogG ( CakesS �1name as input. If the env variable
  HG_EXPORT_PATCH_DIR is set,/ n4 P �will be created under it.
  Otherwise, it* iG �directory from which vim
  was launched� ;Log� � � that canc Qpasse h2 � AE.g.� 0 fo[&inR � �list just 3< �s by user bobA :c0 -u � -l 3

Te�Q:
* PKgets s Wright� wM}g!
 �0not ��`honors�   %-l� It also worksa `currenU Bfile�is givenD -->� �% -u bob -l 3    F�     �   �   \   \   [�����V��"�� ���j$P8y��0�            ue7d8d3cdb459bbb0bd0c16c466665ae28ea06115
Ludovic Chabant <ludovic@chabant.com>
1405573571 25200
plugin/lawrencium.vim

`Hglogexport` uses relative paths correctly on Windows, auto-completes to files.    GL     �   �   \   ]   \�����Z��?��*���TKIA�%��                   )   )3f32f94316a1c7803bb528ef33be934319085fe2
   O   `   1405573711 25200
   w   �   BAnother attempt to fix weird issues with cleaning up diff buffers.    G�     �   �   ^   ^   ]����'��Z���E�K��X7ƛ~            ub66b510b772814c539374837637ea455d946a5a3
Ludovic Chabant <ludovic@chabant.com>
1405917586 25200 rebase_source:92e0f8b56491dc64572053322f0a684e308bc972
plugin/lawrencium.vim

Make sure paths in the commit message are relative to the repo.    H�     �     ^   _   ^����Ӌ�K@;qEEţ'X����s�             4�     ) �I9d3fa1d59078032dd614c6eeb23b1bed0afb73a6
   O   �   $1406176781 25200
doc/lawrencium.txt0 ��   �   �`Hgannotate` improvements.
* `Hgw �opens a wide/verbose version of * 1ion= �!Both commands can take a filename to open first.    I�     �   �   `   `   _�������ݴ�yj��k�E��            u08a854b1a1d737acdd2fb9c78eecb997f74f1738
Ludovic Chabant <ludovic@chabant.com>
1406223428 25200 amend_source:c9869383eff0ee449114b4928dd71c0182910980
plugin/lawrencium.vim

Fix typo bug, annotate window width.    J�     �   �   a   a   `�������x���Ema0D�(��            u54141bc1c05ce57e7c79587c38a042283d4ba785
Ludovic Chabant <ludovic@chabant.com>
1406306760 25200
syntax/hgannotate.vim

Syntax highlighting for `Hgwannotate`.    K=     �   �   a   b   a�����dd�g�	w����ps�l�                   )   )5aa42996e3900ad53d245a377ad43f25effc0deb
   O   v   '1406676857 25200
plugin/lawrencium.vim
   w   �   (Handle absolute/relative paths properly.    K�     �   �   c   c   b���� 4����Ϡ]H�BY��            4�   �,6e354a7c5971188c7bbdd05c87544c197e16344e
Ludovic Chabant <l "@c �(.com>
1406676889 25200
plugin/lawrencium.vim

Fix for L �# files having folded sections deleted incorrectly.    L�     �   �   c   d   c����Yo������L�F��)�                   )   )aa8f36ea86bad569d3c1fae170447db6254cc38e
   O   `   1406676954 25200
   w   �   <Keep alternate buffer intact when opening the status window.    M+     �   �   e   e   d���� x��u�%g^�;[d�&5�L            u79c2845f19cd245eb5a776ab210acded591d6e0d
Ludovic Chabant <ludovic@chabant.com>
1406677510 25200
plugin/lawrencium.vim

More advanced way to know what window to pick to show a diff summary.    M�     w   v   f   f   e������f���^�\J?9F1`��&            uca634b42b0bc7efdc28d35869c2eee001cc0ef73
Ludovic Chabant <ludovic@chabant.com>
1407283863 25200
.hgignore

Ignore tags    N_     �   �   f   g   f�����`��?s!�����9��                   )   )7f071ec10945dd60292d29857acff9679762f5d6
   O   j   '1407283942 25200
plugin/lawrencium.vim
   k   v   0Fix stupid typo, make sure paths are normalized.    O     �   �   h   h   g����Q�k.�V�k՛;�j�6#            u984ac7ccc6e4b87cbaaeccac5815329845767655
Ludovic Chabant <ludovic@chabant.com>
1408146769 25200
plugin/lawrencium.vim

Simpler looking repo paths.    O�     �     h   i   h�����_�F�t�s:>�R��w��7            4�     ) �62874bb5de3f27b211dfda51b8c9223b91ff408d9
   O   `   1408147514 25200 �Uw   �   �Infrastructure improvements
- Ability to store temp files in a `.hg/lawrencium` folder.
- M0 �methods/options for `Buffer`% �Fix a bug with �.SetVar`.    P�     �   �   j   j   i����w�{,'8�\��+p�u~�            u26c205898c3423dde68400a3bbd0b9610e6839bc
Ludovic Chabant <ludovic@chabant.com>
1408147720 25200
plugin/lawrencium.vim

Callback system for `Hgcommit` so we can refresh the `Hgstatus` window.    QN      5   j   k   j����hF�/�����?}6������            4    ) �657366a46b5b1fedf8944d636ed99f06cc2b071ae
   O   `   1408147888 25200 Pw   � �KImprovements for the `Hgdiff` family of commands
- Only mess up with windows that are part6 �a specific Q � session.
- Showm �old revi 1 on �left/top, Tnewer �right/bottom.    R_     �   �   l   l   k����IzH��Ah!45d׷/��n            ubd0a9ba5620bc21ae019b303c39fd76088825f14
Ludovic Chabant <ludovic@chabant.com>
1408147969 25200
plugin/lawrencium.vim

Added new `Hgrecord` command.
(actually, the last few commits were submitted with it ^_^)    S0     �   �   m   m   l������G�=�-�S��q\�����E~            u15fe275f8d7408f6a102dc0f7fd40125981e9fdd
Ludovic Chabant <ludovic@chabant.com>
1409586107 25200
doc/lawrencium.txt

Add `Hgrecord` and a few other things to the documentation.    S�     �   �   n   n   m�����m�N�����%�-S�D�9�            ud083d58468742e690d100ea1cabdd2d99b14d3dc
Ghennadi Pilipenco <pilipenco@molecularhealth.com>
1410900828 -7200
plugin/lawrencium.vim

adding HgCmdPost custom autocmd    T�    &  %   o   o   n������Ŏmc&Յ{���W�            uceed55972246fa71618ab077aec5ffaa207528dc
Shane Harper <shane@shaneharper.net>
1417651759 -39600
plugin/lawrencium.vim

Don't touch vim registers holding deletions.

(Fix commit c02360b5f... where typing 'p' after :Hgvdiff would paste a
blank line and not what the user had previously deleted.)    U�    .  .   o   p   o�����Q��e��3�1�����            4/    �1`   �7e76a0b405fcc2e55e0815f64b81b83b52d8c32d
Ludovic Chabant <l "@c �.com>
1418277048 28800 rebase_source:9eccfb9ec65f0aa040fe4c2a9e3d992c11f66517
   w  %   �Fix double escaping when Lawrencium is stored in a folder with spaces.
Kudos to Gareth Phillips for pointY �out the solution :)    V�    �  p   o   q   p��������]�\YkL����gg�e            4W    ) �m15b6b422c00b26bc72aa106c0977ca49c4b5a588
   O   �   H1419731916 28800 rebase_source:3074f4e48475cacc8e2959d132a1955ded5bde72T �a�  .  �Fix a bug with `:Hgstatus` showing diff summaries in its own window.

This could happen when the user w �commit from i F �, and
do a� v| �sum` right away. ItQ �n't findM eprevioO �
because i- � be gone (. � smessage4 V), so1 Psplit\ 
�  � �elf, which is oft� �oo small.

Now Lawrencium t9�to avoid pickY[ �and will just
� �any other, pnstead.    X�     �   �   r   r   q������%o6�9�ֲ�ã��U            u1a5d1be0c4f0e706596005bcb44a42a463106054
Ludovic Chabant <ludovic@chabant.com>
1419732193 28800 rebase_source:e4e29a1da13c0d95d6ed43aa88209295e3d99d97
plugin/lawrencium.vim

Bumped version. I should release this stuff more often.    Y�     �   �   s   s   r����S��@;����"����:�Lp�            u7c17ec72b288ab46d95670711a50496ac6d3b507
Ludovic Chabant <ludovic@chabant.com>
1419732198 28800 rebase_source:4f1f4b39de108a670d7189e0451ee922b1d3792d
.hgtags

Added tag 0.4.0 for changeset e4e29a1da13c    Z�     �   �   t   t   s����}��s�Q1i�f�뾜'            u27679cbcffb39c679c53b518f3a52c0a2591ccf1
Ludovic Chabant <ludovic@chabant.com>
1422134862 28800
plugin/lawrencium.vim

Revert files from the status window.