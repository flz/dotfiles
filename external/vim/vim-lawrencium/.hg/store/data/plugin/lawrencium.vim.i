        >           ����������:����-�دx�O            4   �A" lawrencium.vim - A Mercurial wrapper
" Maintainer:   Ludovic Chabant <http://l ".c �.com>
" Version:  �0.1

" Globals {{{

if !exists('g:� �_debug')
9 Nlet  � = 0
endifG (G foaded_1 � ') || &cp) && !L g cfinishS t J O = 1� �hg_executable� %  w = 'hg'� Z OtracR  � �echom "L� & L"< P" }}} rUtility��" Strips the * �ng slash in a path.
function! s:s/  " ( � �return fnamemodify(a: �, ':s?[/\\]$??')� N  } �Normalize� X /es| n.    4if ]a+shellH '& , � �substitute� p\\', '/ ��elseif has('win32')I %/'N I : /  � �Prints a message� &  �Pis enrd,<(7 � /if^�  }$l:g 6= "* t: " . a 2 sl � wThrow a�` excep  � �  2 	� � �v:errmsg� A 0 � BFindp�repository root give{� inside that) .� pn errorY(no$  �Kfoun�Pfind_& _m �|u =c-a:& �revious_/ !"" TwhileE ,!=) x�if isdirec� (1 �. '/.hg/stor��@impl��l�6p')7  � )l:� 	c hH!nd�  Ecall27"No���d above/X�"D RD /�Let's define ao � 'class' us��prototype-based object-oriented
"" �gramming.
"[e7 1 di� aw "@s:Hg� A = {� pConstru�	k' B.Newg � 'rtG3newI �copy(self) .�n_dir =���u�"Built new�B at �o 	V �!GeBfull�� l �-relative �GetFullPL%� 5elf� ua�Q~# '^�'�B �*l:� 2� ; �� �list of files match|a�	@tern� If6!la=0pas�0and sTRUE, a�will be 5
nX�to all
" BOies.\Clob(s _, ...]` A 	a)b.� ) es7 `plit(g� v � )�6n')�0Z5a:1� �for l:idx��range(len(g )T 
 �@read�) [F ]/ � & . =  ��� E/or>@_lenX -enC�6map� �, 'v:val[= k: -1]'�1 �IRunsFAcomm�n�`BRunC* (2 f4hg_S =�	g. ' --�A' . ;
yescape(]	�/))p 	  b 'W �join(a:000, R@Runn�)Bi 	yzsystem(  � Pcache�habuffer�snRGet a+ d�!hg/ (�Q" Use���!or m� � �  �current � .}=L�%b:P  ��	c+ �6 0exp�/'%		P 	�?��
bQ�instance20makt Y5one�has_key(�,k �?get+ 
�  r+	X^ 8[# �/�  �S�/up X withR�s�
At co� Mfrom�	 ^ % !is�-in* `, justh�t silentlySetup_� � (
�2Sca�� '�!bu�
�('%') . "'X� f H..."s1do_ �,ifgk/^\s*$C unk 4� 0
 ?trypTftch /^�;\:/U\ U �  �t7 �� s �?ett�s��)O  ��n� A �� doautocmd{Ak�augroup [2tec�M ! �
 BufNewFile,BufReadPost *� 	H �VimEnter�*�b!<aC�>')==''|b |� � 7end�C���Emain@ i = []
�0Add2toH E+= [�]s^ DNa %W
	b W�3e ' 4! -o& .C 

 i �Y�� �3HgE� �
�	 L
 ��  �

%
#, _	 	� ��"-nargs=* Hg :a� 0<f-" I>)")� oStatus�  	� � �
!'s0 '� y 	� s � �cd, Hglcd� @List��Dirs(ArgLead, CmdLine, CursorPos�T� #a:J  �
?*/'R�b)Q�Sbang ��? -complete=customB,� "P :cd<; I> `=� :#<q?`")� : �/:l� �Oedit� ��EO', 1��� !: e%@AutoM# F� ��^summa��(�1ny)e 'si�ropriate�iPsplayWoI lin6�#"  ! @�!
|/'' � =�" '� � b_rev =�Estr(N 2, '" �\: \d+\:[0-9a-f]+F obranchB  � \: [\d\w\-_\.]+PC C. ',� _scansz �s�	/up�	  W1PasR'1' aG `parame��s� ��emporarily�r� 	�����x� Q_back�A	0 ��
� b 

� PEyB/dis� t�y" �P�(� �(� )))�:	� �w�(^  4? "�"� =d."�P}}}

    >    �  "�           ��������HfT�~��jZ}��            4S  �!  "  1   " Main Buffer Commands {{{
  �  �  ��  �   	" Hg! �*�  �   function! s:Hg(...) abort
  5  y   =call s:Addv n �("-nargs=*Y �:executeH 0<f- @>)")I ��  �   Ʉ Rstatu� �
let s:hg_ �_messages = { 
    \'M': 'modified', A 7add R Wremov C Uclean !Q eissing ? �not trackA I Vignor }� ��  �  d  � �l:repo =�   6()
 � ctext =- 5.RuO'! '4  1linisplit(K Y, '\n4 Qentri/ ![] `for l:D ; inU #
  $if$ �=~# '^\s*$'
  �continue Vendif �chom "STATUS: " .Q " � Xtoken�  $  � [s\+')-  � y	� �\'type':N K[0]," pfilenam& (l�root_dir .9 <1]):  V/':�[q r } .Eadd(�,� #)
9Efor
, �setloclist(0,��@openp��     8�Z	�S (�"n � " }}}

         �  "�          ����|e
�.Փ�f����p�e��            4�   �%  ?   %   �    let l:prefix = (a:0 > 0 ? a:1 : '')
( 9suf( 1( 2( �branch_file = s:hg_repo().GetFullPath('.hg/+ >  p = readD (R A)[0]. freturn� .< �.  l:suffix
    �    �  '�          �������Tj��+��a����+            4G  B  ! � `if (exists('g:loaded_lawrencium') && g: �_debug)
    echom "Re8 % L& �."
endif
  �    ��  3   Ifunction! s:trace(message, ..._ *ify ' � || (a:0� �a:1)
  Y   /� �" Get the repo and �`hg status` output.; ��  �  3
< �
Open a new temp buffer inE �preview window, jump to it,@  o _pasteu J 3re.1 �Also, make itz �ice size, but restorN  �height` setting afterO �we're dona `let l:� q_file =� gname()! Z _[ I = &l ��xecute "setlocal $ �=" . (len(l:� �_lines) + 1)B `pedit 1 � # �wincmd p � call append(0, X � � 9 0QSetup^��correctly@�b:mercurial_dir = l:\P.root * � �buftype=no�  �nomodified ,ab2 �readonly� �Add some handy mappings� �nnoremap <� �> <silent> <C-N> :W�search('^[MARC\!\?I ]\s.', 'We')<cr>P PP ?'WbP dcr>  :��<SID>HgS��FileEdit(K q  � :bdelete2 4endu(

c  g abort!Lp= s:hg_ 	> �` = get
 S('.')��Yay, awe��+, Vim's regex syntax is fucked up like shit, especially fo��look-aheadsi �behinds. See, � yourself:�  � �� = matchstr(� Z, '\(��\)\@<=.*')B ��GetFullPath(  � pGo back:3ous;� 2opeW�B, or #anI � ��.' if �� %'�7' .� H>lse0 �. Pndif
    L     �  (          �������C�}u�<����{�l            4�   �1  6  X   Z    " Setup the buffer correctly: readonly, and with) " � repo linked
M �to it.
  �    �
setlocal syntax=hgstatus
    �    �  3          ����:g�H����Y�̼3|�Pa            4
  B  v �9 h" Store the commands for Lawrencium-enabled buffers so that we can add? �m in
" batch when  �need to.
  � �)" Auto-complete functionx � c �take repo-relative file paths.
: �1! s:ListRepoFiles(ArgLead, CmdLine, CursorPos) abort
    let l:m� �es = s:hg_p �().Glob(a:J � . '*', 1)9 �call map(> �, 's:normalize� �(v:val)'2 freturnn D
end� /

+�directory	?DirE//'B�  �      � �Hg(bang, ...� �  (  X  \� �output =� 0(l:� R.RunCR�, a:000,  � Pif a:` #
  a" Open$Q (of2� in a temp�.9 �   _�=% ename()% �execute 'pedit ' .4 ' �wincmd p m�append(0,� Y Gelse� �Just print� � � EechoT S @ndifh�e  �   L� �s:AddMaiT0("-=� -nargs=* Hg :� �<  p>0, <f-$ �>)")
  9 / n;f8wmodify( p, ':h')��hg-status-E0 t0 � .txt'
   -   �  �"  "�  �� %? ��=customlist,�1 Hg�: � 9 `=TpetFullP #<q0`")0}}} �Hgdiff {{{

PDiff(�  � �, vertical�Default revisions to W :wworkingO�(special L �hard-coded syntax) an
e paren[V   us I �Mercurial's� DsetsR .��rev1 = 'l� �#_wdir_'% 2% Vp1()'�k0 == 1�, 5a:12- 2- 1- F  2%� "Gek1cur �,&4exp-dgiven � K�case it containsN Vfancy) �Jiers%*po�  ~# =| 4(a:K ��s:trace("T'�2'".� 1."'�  2 o� B: ".` )� �We'll keep a  BiM!is{,P0�one exits,H �others' ', �' flag is 6hed off�  $ _e L= []�RfirstC � o�4it.*�g) �bufexists(� �	��  �mescape4 	�	A ? 
tI }��('cat', '-r $"'!'" Io', S� � ; *)
� P" Set� up�bMK�windows, s* !s �2dir� $  ]4b:mbd_dir =� @root %msecond&L toom@spli_' v��	8 $  A �2�tb ?. '?1Q21� ;!�  "�  #[   �����	��{'%:p',  	t 4vu 1u P>)")
    �    Q  5y       	   ����'JJt��j�q������            4�  B  !� �? �    nnoremap <buffer> <silent> <C-D> :execute <SID>HgStatus_FileDiff(0)<cr>
L VL 1L �  !�  #$   hX �" Get the path of Afile	 �cursor is on.� `let l:! �name = s:m �GetSelectedPath()2 R
  $ ��function!8 � �vertical) abort
� Uh �o back too �revious window and call Hg� m �wincmd p  "s:  (� E, a:� D
end.

� � Arepo� 0hg_ '() 0lin� 0get
 S('.')� �Yay, aweso� �Vim's regex syntaxG�fucked up like shit, especially forN �look-aheads �behinds. See, � yourself:��matchstr(� �, '\([MARC\!\?I ]\s\)\@<=.*')B �.GetFull1  4 greturn7 �Pion

    �    ]  >�       
   �����Qdu| �i�d�
�c�P            4�	  �  �  F  "0� �	�" Hgcommit {{{

function! s:HgC �$(bang, vertical) abort
    " Get the repo we'll be S �ting into.- alet l:) p= s:hg_ 3()
K cOpen a< � message file@  �_path = tempname()# �split = a:� Q ? 'v R' : '
 2 uexecute6 z. ' ' .i * �	call append(0, ['', '']) 12, L (C�_GenerateM� (�), '\n')QSetupPPauto-� �and that wic tctually&�on write/exit,F  3 AmakeI �buffer delete itself7  1 X�b:mercurial_dir =�P.root * PsetloO�bufhidden=X  Pif a:,#
   � �cmd BufD� <� >1!E��(expand('<a��>:p'), 1eOelse\ >0\ �ndif
end 

�sstatus_�as = { 5 �\'M': 'modified', A 7add R Wremov C Uclean !Q eissing ? �not trackA I Wignor    }����J�msg  = "HG: Enter��. Lines beginn�� with 'HG:' are � K.\n"W .W ULeave��empty to� n > W��Dquit��to procey 
/-- �user: " .�aBRunC��('showconfig ui.1  �'�[0] . "c �branch 'e 
% U 'V ��l�=� (  N  � �`for l:; ; inL l$if$ R==# ': vcontinu�K � �type = matchstr(O �, '^[MARC\!\?I ]')7 �. K[2:]  QI� [~ ]�W � �"orSbreturn\ 
H\@log_V , z_output+PCheckL � 1�]saved�.W!Z �readable(a:m /�  Je("CC@was >f :...]"F � � m� �  Zgiven� � t"1log��� * a���  �M-l',^ ���Echom\ � eAddMaiu  "-�N	:YH	<#  >0t/")H vI �1)")

" }}}

    $O    �  @          ������.�����e ����c~�<            4p  �&  	�  	�       if a:path =~# '\v^[/\\]'
  
�     ") (* Ktern- � )
  Z  �   )  �if b:mercurial_dir7 @\s*$c �)  ]   R1 �l:status_text ==/  \%1 T\%$'
\ �	echo "Nothing modified."! Pendif^ a�  0  "�   4" 6letk �lines = split(� Q, '\n� "~   @ �" Make it a nice size. ( � ' T( 0sur- �'s deleted when we exit the window.� �setlocal bufhidden=8 �
  %'  %i   A� �filename = matchstr(l:�  � �v([MARC\!\?I ]\s)@<=.*� "+� $ ;X� qpart of� �diff group.�  �this
  ,� / �G (; �Remember4 @repoH �belongs to<  � b0 l:4 P.root Y ��move away from itj �	b,�  -f".� / �� �b.�  /� �6q  6�   9� _l:typm^mP ]')
    &�     �  @�          �����WFM��,1�i)�k�O��            4  B  9� �) �    call s:trace("Committing with log file: " . a:log_ 0)

= �" Clean up G �the 'HG:' lines from cW � message.< blet l:) `= readY (d � sfilter(/ �, "v:val !~# '\\v^t "0 QwriteO 3 	� �  9�  :8        '�     q  A          	�����/�������\.n0))�            4}   �"  ^  y   !" Buffer Commands Management {{{
  R � %" }}}

"- �Auto-Complete0 R
  | # 1 �  </  <6        (    	h  P�          
����Ռ��9#;j��R�u�k۸            4�  B  � �(/" Like tempname() but with some control over the file* �.
function! s:@   �, ...)
    let l:path =e  �result = f rmodify(3 �, ':h') . '/' . a:# / .+ "t'X �if a:0 > 0 k    T 1& Qendif
 ereturn$ D
end� �

  v  �   ;]  � _( =�'hg-output-', '.tx� �  ^  �  �" Include_�generated HG usagr .
f !s: g �expand("<s `>:h:h".� "/resources/hg_4 �.vim"
ifN �readable(Q =�execute "A I " .w R
else* �choerr "Can't find� �Mercurial� � Auto-compleJ� will be dis� �d in Lawrencium."
�	eC? �eHg(ArgLead, CmdLine, CursorPos� @" Do� �do anything � � � was not � $d.@�!exists('g:l� �_hg_commands') ||'  op� s�V'[]n� #a:� � seems to b�number 0 when >� ng a minus '-'.F RGotta�o�Why...h@argld =p � Utype( B) == 0� D >'-'� :Try� rglobal �, before� H J��� =~# '\v^Hg(\s+\-[a-zA-Z0-9\-_]*)+$'Z�filter(copy(��), "v:val[0:strlen(� �)-1] ==#� /")� � @(not� at�r80uld�	sO  �
)
L\s+(c+\s+)* ] ��m " - matchedj ":_keys(�;( 
 ?$'s � cmj� Estr(,(
E)@<=� Icmd)!.� A for� 2. "$: � � s 6 &&0 "[0:&'-��if has_key�,� �_R�Kboth�  s  �@toge�t
�copts =V
� [� ]#"
v gv �:�� +{ ��gJust a�e
	�s unless it'wo��
&k � s:ListRepoFiles�', !'a:	�� call s:AddMainC��("-bang � �=customlist,x� -nargs=* Hg :,`s:Hg(<B p>0, <f-$ 0>)"��#  �   7+	jstatus+	"!�   �C �nnoremap <buffer> <s{�t> <C-A>� �<SID>HgSS _/�Add()<cr>
J RJ sRefreshJ B  "1 #N#�Make sure1` is deDd.  v ~ Q YABufD( � � �CleanUp(�	2'<a�	;p')�<	?  6s) abort� I	B`hg �"` �
 �� been saved��disk (e.g. because of aJ r"  w�	0d),�'5 it � Awrit�
a��� qtrace("�  6#up� B log�: n 	V �$�	 !Ge�@ repU
d..�!po�0hg_ 	�7 D_tex�Upo.Ru�'! $')~sReplace7�ntents o�scurrentUe1it,� �.�Q "Wri�!toAL%F� � @line�isplit(�  �n4 � �e�(?  ���dit
  #� /Ч��� &of�'0sor�"on3its���( =q � GetSelectedPath� 0  &()1 !?�	W0Not? un1ked� p� �
5Add� ��| Wadd',i �� d � �window.
�KHP%�  %�Bv�	6l:l�	�[MARC\!\?I ]\s�	!.*$"&V . �*�4} ln@ get
 X('.')� 	� '� �2~  2�   9Y	Smmit_Y� �*or�"4   E �setlocal syntax=hgQ  ) , $ \KUC� E�UF, 0)��  4  4�  �9�  9�   I�^ A mesto G2...��
�it.", 1)
    1�     �  Q=          ���������G�m�<_n`�5��            4�   �.  &4  &[   %    if l:status_text ==# '\v%^\s*%$'
  Kt  K�   c1 �a:show_output && l: *!~=   � call s:trace("O- �from hg commit:", 1)
    2     S  Q�          ����@6�W�-L[g���յOC�mC            4n   �  K�  K�   b  �for l:output_line in split( �, '\n')
  Zechom9   pendfor
    2j    `  S6          ������s<��g!,'��� �,Z	            4  B  � � �" Prints an error message with 'lawrencium �' prefixed to it.
function! s:# (B �)
    echom "H �: " . a:, D
endI �

  W  �   iD Ecall^ �"Can't find the Mercurial u� �file. Auto-compleT � will be disabled in L� �.")
  2  28   =u y 0Not'�untrackedk �  l: @nameI �I�  I�   8I �abort: Commitq�not saved� �J"  J^   �@ P" Cle|  p J  � �'HG:' lines from cS �, and see if Rre's
O 5anyy fleft (H�does this automati� by, usu	 4butH �pparently� �when you fedrt a log�@..).� �   �B �if len(filter(copy(l:� �), "v:val !~# '\\v^\\s*$'")) == 0
]
[Empty%")4 �return
    endif
    4�     :  SC          ��������8����L6���G              �  �   .        call append(0, split(l:output, '\n'))
    5    �  \�          ������ TD����Bl�G�e���            4�	  �  <�  =   !  �call s:HgDiff_ � This()
  =�  >- "AJ �	]function!* p abort
M �%" Store some commands to run when we exit diff mode.9 �It's needed because `& �off` reverts those settingZ �their defaul� �values, instead of' �previous onesz Pif !&h 
� trace('Enabling� � on ' . bufname('%'))> �let w:lawrencium_� _ = {}& !['� o'] = 0. Awrap. 0&l: 4 �scrollopt9  > Jbind?   @ hcursor@  @ �foldmetho@  @ hcolumn@  @  / Athis �endif
end/

zOff(...0Get� window 4� (given as a paramter, or current- 4).
� �l:nr = a:0 ? a:1 :$ Snr()
h 1Runh x�we saved in `�`n Ajust�jq �backup = getwinvar(� >, 'Y$')NTtype(= B) == �{}) && len ?> 0w?Disx � ppfor key� Fkeys] " ] � Ekey,� V[key]5  �+or� B, {}F Oelse� #� . ' (but no true resX9)')�?off�0Get WZ
���result = []
[ nrZ�range(1,s('$�'if!�� Dadd(h I, nrp;if
zereturn� � {CleanUp��If we're not leavya{g@, do Ohing� o^ @ther�@ll b� ly`a � left (plus�  � � #),O �  />  � yw_ 
	?s =�� k�nrs) <= 2�i�A  �� 's.�"( 	�� H
"�i St��  �ds open� K �augroup ��
  autocmd! 0 Bu�{Leave *� �S Pend

    9�    L  ]t          ����}��� �S��?c�FV�vT�q            4�  �<  0�  11  t   
    " If the file is already open in a window, jump to that .D �Otherwise& �e previous. C andX t  "re@ `for nrm �range(1,1 �nr('$'))
  �let l:br = �bufnr(nr  �path = fnamemodify(bu (> v), ':p'7 &if6 P=# l:
 / '
  pexecute� �. 'wincmd w'$ ereturn cendif

 �for
  1>  1�   !T �'edit ' . l:filename
    :�     y  ]          ������0����<�fm�U�F��            4|   �)  4  5T   p    " Open the file and run `Hgdiff` on it.
, �call s:HgStatus_FileEdit() �	Diff('%:p', a:vertical)
    ;w    �  \�          ������=�Ѻ���ݢ(�$L޲            4�  �2  %�  &'   kcall s:AddMainCommand("-bang -complete=customlist,s:C �Hg -nargs=* Hg :L @Hg(<? p>0, <f-! �&>)")
  +?  ,�  h    nnoremap <buffer> <silent> <cr> Q �	<SID>HgStatus_FileEdit()$ 
H OC-D>H oDiff(0I VI 1I AI ?Add� RG sRefreshG 0  7 _B   5�1Hgs: �K (��K  K�   �,/�ListRepo� �s Hgdiffm ={'%:p', 2q 4vr 1��W�  Xf   �
�HgcommitW C �0� E vF P1)")
    =      ]�          ����7�ܛ��>xc<��φ �f�            4`  �V  8`  8�  Tfunction! s:HgEdit(bang, filename) abort
    let l:full_path = s:hg_repo().GetFullPath(a:@ : Pif a:Y #
  �execute "edit! " .[ ' Oelse0 / �ndif
end� �

call s:AddMainCommand("-� �" -nargs=? -complete=customlist,s:ListRepoFiles Hgy :S ,<J �>0, <f-args>)")
    >+     "  ]�          �����D�*Z�V`X��>���[�              NY  NY       call cursor(1, 1)
    >M     s  ^!          �����<l�$Ŋ�� uh-�I�            4�   B  Zg �     let l:branch = 'default'
  Z�  Z�   _) �if filereadable(5 _  )
# P   / -fi/ �[0]
    endif
    >�    ~  c�          �����lJ�O]�X�X &��ޫN            4u  B  ? �& [if !exists('g:lawrencium_define_mappings')
    let ' 	� = 1
endif

     �< �!" If there's only one argument, and it's a list,, �n use that as 
J 6 * .� `l:arg_ � = a:000  if � == 1 && type(a:1)  "[]� H 1 � �  w  �   T/ phg_comm� = �. ' ' . a: Vjoin(j , b)
  (�   ` �call cursor(1, 1" q)�  *  "*[   . �setlocal buf� �=nofile
  *x  *}  �CSMake � �s available.
v 1s:D�SMainC) 3()
@ �Add some nicI ?  �! -buffer\�Hgstatusedit :j 1HgS �_FileEdit()J e-rangeJ �addremoveJ AAddR �(<line1>, 	 ?2>)� Odiff� oDiff(0G vH G 1G refreshG R  ��  *�  ,�  >��	��nnoremap <~ �> <silent> <cr>  :�  ; DC-N>� �earch('^[MARC\!\?I ]\s.', 'We')T PT bU HD> :�; V; v< A< �@ R@ #> q��bdelete!7 ��0�  0�   2� Mhname =��GetSelected�(��2i  3�  function!� �pstart,  �end) aborth0Get�# sb  � l
� s� 
Gs(a:p #a:r P, ['!6D?'])3Glen(Y .P"�error("No� �s to add or �#in� 0ion Bcurr�@ne."*�3�  3�   &� URun `�` on those paths.2 ��  3�   5� �l:repo.Ru�%('C (',! s `4?  4m>���vertical��  4�  6b   {6 ���hreturn7 �[0]
  6o  6�  u� Xs(...� K>= 2�` = get  # $2� Oelse1 *[]Cadd( ,N W'.'))a'[]  �+0hg_ 1for? \g � � 3 � (~ ( �): �if index(a:3,D 7) <� fontinu(
�  �" Yay, aweK�(, Vim's regex syntax is fucked up like shit, especiallyR �look-aheadsT
 @behi�A SeeA�yourself:���matchstr�k, '\v(l�)@<=.*')F � gwullPathV)9,, * 4end�  y.

��>  ?�
) :�R
  ?� & GuN

R
B  B\ S 8"P / ?�
,�  Zg  Z�p�Z�  [!   .3�branch = read�( �_file)[0]
    E>     s  dH              "S�k�z�*!	�7�@>�P�            4�   B  `� �     let l:branch = 'default'
  `�  `�   _) �if filereadable(5 _  )
# P   / -fi/ �[0]
    endif
    E�    �  j       !   ����	*W)�^p�'M��Y��NՉ�            4�	  �  +7  +  �,  -�  Z    command! -buffer  �Hgstatusedit �:call s:HgS �_FileEdit()
L OdiffL oDiff(0I vJ I 1I refreshI R � g-rangeK �addremoveK AAddR �(<line1>, 	 /2>] 
�=% -bangc  ( /it�  C ^ 0, <@ _>0, 0j vk j  r1)
  /r $ =r�nnoremap <z �> <silent> <C-S> :� @<cr>I � 4 ~
J vJ 
AJ �M @ � "7r ��function!  pstart,  Pend, �, vertical) abort� �" Get the selected f� Qames." elet l: ( =t CGetS8  �Gs(a:� %a:� �['M', 'A 2R']wif len(^ e) == 0)��error("No� Ss to #in� aion or  "."^ cendif
� rRun `Hg7 � ` on those path� iI"a:7$a:9,	T)
end��

  R�  R�   0�O 
�T, ...�B  S) *Q�|list of� .� � It can either b�Sveral0 �passed as extra parameters,-#anG bactualm 4  � \first> $[]�&a:�( Fa:00  /  ��1 && type(a:1
 [.Q 	1" � �  S�  TA   Q��append(2, split(��_GenerateMessage(l:repo�p, '\n')h"T� $ 0� �b:lawrencium_�_�=E �
  W  W@   <2�  � ,>�X�  Y(   �Va�
<\_� �a� R.RunC�"('( '� 4"\nc?lse\ +
O ��  ]�  ]�   �X ahg_argg1'-l� 1logY]�0ext�/ ,�)�aoutput�� 4 &',�  ��^�  _Q   �7eAddMai7 "� -n1 �=* -complete=customl�,s:ListRepo== Hg��FP, <f-U _>)")
} :v~ 1~ P>)")
    Jv    �  l       %   ����Q�OTr��Q�J�L_:B�~D�            4  B  e# �" Hgrevert {{{

function! s:HgR �(bang, ...) abort
    " Get the files to I . `let l: �names = a:000  if B ==  0 �[ expand('%:p') ], VendifF  � D �call ins� L �, '--no-backup', 0)K � Hrepo�   � = s:hg_ $()2 1Run2 �command.
� 6 R.RunC "('(',� T)
endq!

; �s:AddMai:  "-� � -nargs=* -complete=customlist,s:ListRepoF��:U �<N p>0, <f-R �>)")

" }}}

    K�    T  q=       (   ����	��m��"���ݦ�,]���            46  B  .) �2 �    command! -buffer -range=% -nargs=+ Hgstatusqnew :call s:HgS � _QNew(<line1>, 	 2	  f-? ?>)
f ] �refresh  f R j b)
  :� �Xfunction!�  . pstart,  �end, patchname, ...) abort� �" Get the selected file, !s." elet l: ( =r CGetS8 �Files(a:� %a:� �['M', 'A 2R']-wif len(^ �) == 0
  �error("No� Cs in� aion or � to create� "."d cendif
� �Run `Hg ��` on thos1 h� Arepo� 0hg_ 5()
� hinsert�  � b0� \a:0 >� @ E'-m'9 � �message = '"' . join(a:000, ' ') . _ J 8, 15 � R.RunC� ('#8', �D
endx/

���v��/th{/ 96'-s?�y �Pon


    NR     {  q]       )   ����Mc��
z��O������T"�            4�   �  K�  L
   g  �call l:repo.RunCommand('cat', '-r 0"'.# Qv1.'" o �temp_file  @path �)
  N�  Os &2s P'"')
    N�      r�       +   ��������@(ތ�M��@��Zt�W�            4{  B  � � Kif !exists('g:lawrencium_auto_cd')
    let  � = 1
endif

  �   �4 /if3 3:
  �" Temporary set the current directory to rroot of 7epoF �to make a �-completed paths work magically.7 �execute 'cd! ' . l:W .h A_dir) � B   / ?� 	\ �-'
    endif
    O�     @  r�       ,   ������c�v�$��G��wF�.�            4P   �!  .  K       if g:lawrencium_auto_cd
  5  R( Po_cd
    P    	6  �        -   ����H%���;Z�=�_���;�            44  B  � �- �" Delete a temporary file if it exists.
function! s:clean_/  ) �(path)
   3   �writable(a:   � call s:trace("CG king up| o: " . > d� 	Z �endif
end� b

  	� ��" Given a Lawrencium > � (e.g: 'l �:///repo/root_dir@foo/bar/� �.py//34'), ex� �t
" the 3 psitory 9 �, relativeIl �and revision number/changeset IDbfparse_� _D ( � `let l:�  [ = a:) �	' Y~? '^� 'jT �strpart( , Jlen(A(')�� TW = '' bat_idxd :idxc F'@')� + L>= 0� ] � %0,? )� x 8+ 1�  
 	��v = matchstr� �\v//[0-9a-f]+$�  7 _!=? '0� 8) - .v)� vQ Ov, 2��esult = { 'c'':l0, 'r  � 3rev 1v }M ereturnP ��#
�  
�   " Constructor.
  �  �   /" Gets a fullTg� } -t   ; �T  �   S; �Mercurial command{�HgRepo.GetC (' �, ...) abort
  ; ) �� 3hg_0 
� P" Run�  5 inF� ?Run� 	J�ll_args = [a:, �] + a:000) � ! =Wv(self['� 7'],Q  ,   )� ��  �   " � � cache maps��  �   s" a d� �  3�  5   J� �autocmd Buf��<buffer>*j0exp0'<a 0>:pm�  l�  l�   (V { Ryuc��  l�  m  "m� �" Hglog {{{
�OLog(v � �� 6%:p��a:0 == 1�7 <a:1�  :get� 
+ � �  ((lo�- �g'log',� P, '--t�late', '"{rev}\t{desc|firstline}\n"')� !Op�1new� ��p��ew window, jump to it,@  � Qpaste0 � `hg log` outputG (re�  g _b �   �name('hg-log-� C.txt��execute "peditaC # 0win�p0 `read !0 yescape(Sf, '%#\QSetup� �correctly: J Qonly,� Cwith�" �clinkedM !. ��d on clos	4b:mS��* dlogged?�- �setlocal� rhidden=�  utype=noC �syntax=hO5Mak�ps avail'
'.

�DefineMai�%s(\�Add some oH nicO  nd�SpingsR  3! -� -n�"=?�1rev
:z ��_FileRevEdit(<f-1 >�gZ	d� _t ��nnoremap��<silent> <cr>  :   ; q! ":b�!7 	4a2surD�s;q�/.
�7	�8	U D>�	 T#3was��manually.�<?lseH �should be Tbd fromw`urrentre�?logg � � GetSelectedRev(
3 �- .�.�
/ .�2. '9 � 	�'� ��� �=f 
 3('.8�" Behold, Vim's look-ahSregex�� again! WTF.	 ] �^(\d+)(\s)@==#6�hrow("Can't�Q� b :�  ��
v6i 7Add�%("7P-comp$�=customlist,s:List	 �sA	UI ")

0}}} �f; vCRead<�k� �  �	8)a:�1 [�]n {�l���
KNew(� �  -ev� ��'��Vcat',P �%])�0]  ['-r',� s �*''��augroup �
�)!
�  YCmd  j&**l *� R��>�� �END

" }}}

    YT    �  �s       .   ����)u����Phl%���+b���            4�  B  � �+ kif !exists('g:lawrencium_hg_bang_edit_command')
    let , P = 'p �'
endif

  $R  $y   F  executeO �. ' ' . l:temp_fileR � $R �call cursor(1, 1)

 �" Make it a E u buffer  �setlocal �hidden=delete" qtype=no� c �
Try to find a nice syntax s:�iven the� Srent � .F  a#l: �_name = s:GetHgC �Name(a:000)7 ,if6 �!= '' && �. sP_� s�
�   = get(H ,� ;, '[ )ifZ � 	! "'|2ft=	; 	5 n
 B  &F � �" Include�_ L  � �mappings.
� sf _ � = expand("<s p>:h:h")��/resources/�.vim'
ifq �readable(f ()
� "V O " .� eq)w  )�  b*�  *� "-� � �function!T�rgs) abort� �for l:a in a: o�stridx(l:a, '-')�0�`returnB 
�wendfor
( '.�  � �:5  :\        \    ,  �        /   �������~��H�v�#�*	��P            4�  �  �  P  �$�  %   8  �execute 'pedit ' . l:temp_file
' �wincmd P
  %B  '_P b(�  )� ",� % #\ �chom " - matched command"
  -�   s+ �if strlen(l:cmd) > 0
H � option for "�  � �. " with : qargleadP �endif
  0�  10� �4  4   � "=� $ '� � "Writing to^ �expand('%:p')
  wd  wqL Pmd P
    ]I    	  ��       0       !���:��7��|ٞ����            4a  �  �     4  �return substitute(a:path, '\v/' \ �g')
  1  b@ (� � �" Shell-slashes the 8 �	 (opposite of `normalize �`).
function! s:sB A ( �)
  if exists('+ �') && !& 
� � /� h  else7 ,   �ndif
end� �

  �  �   `3 �let l:repo_� =� �a:lawrencium_� � 	5  ~?� ^, �://'
  $R  $��dsplit
 �execute 'edit ' . l:temp_file@ � $2 �call cursor(1, 1)
M �" Make it a E u buffer  �setlocal �hidden=delete" qtype=no� c �
Try to find a nice syntax �set given5�current command.F t Q_namewbGetHgC 0Nam�E000)7 ,if6 P!= ''AZg�3hg_. sP_� &s'Q �   = get(H ,� ;, '[ )ifZ � 	! 	|2ft=	; 	5 �
 B  &F  �rInclude�| L  � �mappings.
� sf _ � = expand("<s �>:h:h") . '/resources/�.vim'
ifq �readable(f ()
� "V O " .� 
� �
  )w  )�  b*�  *� "-� ( ��T�rgs) abor��for l:a i7  o�stridx(l:a, '-')�0�eNl:a
� y(or�,''��/  /G   :`@OpenY(ew�$ i �window, jumps0it,F R�  /�	�0  0   �pkj�winfixheight"$ ! =��	(len(l:status_lines) + 1�resize 2  " b0�  1� b:5  :\ �r|  r�   (61Get� � �8run �.
  r�  s+   e��output =�C.Run-s('log',�| --� @late}�"{rev}\t{desc|first� A}\n"S�s�  t2   @��append(0,�(�  �_n'))
��  v�  w/  �� �Clean up whn5log-"s �t�autocmd BufD " <* >l �s:HgLog_ (�2'<a�p� 	�b	; "`prignr =G<nr( r�b:mercurial_loggeR
� � �any other� �opened by this .2 (" �s with L�� ��at match: 5 u  �)nzPrange�� $'$��b� �bufnr(nr  �  ufb (2 $  T!pskparse_� : f< �['root']q	h  % g 	�	(K )F 4	F 
  F +if� 
0dir�
h + @" Go�4�1swi�o�
|revious*	F Afrom+ uR  Q ? _sion.:  CJusto � ing away should�W @sinc�	H  \has `�	`r �echom "Found6� o: ".nr} nr�0win&w��3alt�&�('#	�= /~#.   0" T��is a special�� 0...�
c\/beI a�l�%wn� ��W �J 5�very `Hglog`, which we don't wantn.K pLet's j+adefaul7   4 �  ' in
/il� @gain�not sure w�  O ~do here� ��0/ls� b\3 	�
 .	�" RestoreH� ifi[!edY.X=curr%if %!=���� 
� � �	; if��was created somehow.�0s:c�_6  5 � �"x� & 2� `9Pescap; � p> � / :��B  |Z ) f(  �Jonly> �nomodifi� ?ed
� �  |�  |�   \��ReadCmd  &�**//[0-9a-f]*�0 s:* SFileR���match>'))
    fd    f  ��       1   "����H8jK�*w���T��            4/  �  �  �   a" Given a Lawrencium path (e.g: 'l �:///repo/root_dir//foo/bar/file.py  �)v=34'), extract
  ?  k   -    let l:at_idx = stridx(l:Z _y p, '//')9 ��  �   =9 = + @ JpartA ` 0+ 2I ��  (  E �value = ''
� _ction �  0 )if/ A>= 0 b � = � � 0C +)
@ [equal� . V, '='o (if. 	� B� L < 6+ 1W 
= 0@ < fendif

  � xecute 'cd! ' .$���bsolute_@�fnamemodify�#:p
u_lativ> >.')� -P	W �sult = { '� '':� 0, 'O /':� e, 'rel! � 2, 'NA ��%':�b}
  � ��" Runs a Mercurial command in the `   �read it output into! �current
" buffer.
fun~ �! s:HgRepo.ReadCY O@ (g �, ...) abort��ll_args = [a:, �] + a:000) 4hg_� �= call(self['Getp 7'],Q  ,   � / 0 s:��e("Running
Y: " .k �!�xescape(, �, '%#\')
end�

" Build� 1forWg� d~�\6GetE RPath(�cA .D /a:��
Z| :�ypslash(� 1) .f, .� waS4!=?�u & = Q : �a"M �  P =O ; � 
 ereturn< 
B  y� ! I�{2! -U0 -n��=* Hglogdiff' :��HgLog_Diff(<f-*  >)U "z $ 8� �nnoremap <Y �> <silent> <C-D> :a �<cr>
  {D & 3
@orig�* =�4b:m>��
  }  }o   HQlb�_H =V %&& z ��  ~a  ~�  ��5  ��   n3� !hg (��& = � plogged_��1v',9 v� ���  �    *�AeditV. w  6 ��-  �t  ���0�2�v 0a:1�,�% Celse9 O== 19 - " � �GetSelectedRev()�uJ �vsS �wincmd p
x	my� �J0lin	0get
 ^(a:1)S+ 8'.'G�  ��  �   b�  8+AFile�� �0ead�WD'�a����  ��  p�	lz2ps[�]�
 q]�  " � ` revis��(`hg cat`p
I �H 
{� 8Ff'cat',H  	� �O ]'-r',� g 	�z"�# �#s$ $ `�� >','\6 >�Irev1�R '0,E )B 2B 
� %if� 3= ',�� � �	�� v 41v f 2� �!~ c%  �setlocal�Ptype=X R
  ��    R�  ���"�. ) @ 1buf?  noJ �
  �m  ��   Z  auto1Buf� Imd  d
#**  *R�expand('<amatch>'))
    m�    �  ��       3   #���������_��H��=�r�B)            4�  �C  U�  V�   �    " Default revisions to diff: the working directory (null string) 
F 1and/ �parent of=  us �Mercurial'sy �sets syntax).R �let l:rev1 = ''
  Y  YC     %if   l\�  ]  2  "il `" Hg� �Summary {{{

function! s:HgD �(split, filename, ...) abort
C�sC0a:01 ( "a: Celse- O>= 2- � . ',' . a:% cendif
� 1Get� 1cur� Qrepo,� 4exp� Ugiven_� in case it containsN Vfancy) �modifiers� �po = s:hg_ '() cpath =| 4(a:K $  ca��:trace("'h�R: '".� R."' o� B: ".Z j �special =� �.GetLawrenciumPath(5 0, ')#',V)�x
� 
�& �v' �
 �xecute 'edit �� _POpen �folds by d�.! �TODO: maybe set `no+ �enable` instead?. % �open!
end]#

e�AddMainComm��"-nargs=* -complete=customlist,s:ListRepoFiles�3sum� :V 
��0, '%:p', <f-_ O>)")� <~� 1� Iv� � 2� �
" }}}

  �% $ �;W l:� �s['value'] !B .�CRead� tOutput(�]'-c',O   0'])� �2  ��   Cg O Ph'])
    ql    [  �"       4   $����������9�:'�|�=U�a	            4�  �  Y�  Z�   {  �let l:rev_path = �po.GetLawrenciumPath(l:" �, 'rev',5 41)
I �execute 'edit ' . fnameescape(c �)
  Z�  [�  �\�  ^�   �� F� l:diffsplit . '� "��   D �" Setup the new buffer.
  �J 2 �
) �Remember,  � � it belongs to and make/  & � � commands available.
� b:mercurial_dir@root * �call s:DefineMainCommands()

    r�    C  �o       5   %�����G��@��n�!����Q            4�  �$  ;G  ;d       setlocal filetype=hgstatus
  o�  o�+ 	�commit
  }N � Jlet s:log_style_. � = expand("<s �>:h:h") . "/resources/hg_log.8 � "

  ~  ~p   b�  Z �
l:output = l:repo.RunComm] �'log', '--C � ', shellescape(� P), l:	 �path)
  ��  ��   � �log
  �A  �t   3� �rev = matchstr(l:line, '\v^(\d+)(\:)@=')
    t
    	k  ��       7   &�����4�ڸ%��n1'��*��            4  �  F  y   8function! s:parse_lawrencium_path( �, ...)
  �  �      if a:0 > 0
  �execute 'cd! ' . l:root_dir$ 7 �1 == 'relative'
  0let8 1epo~ �  = fnamemodify( v, ':.')~ 7lse^ absolut^ )p^ Ondif� 6-'
" �  �     eq �sult = { ''':0, 'r  � a�  �, 'value 
 r }
  � ( ���HgRepo.GetRhP� \ �) abort
�Yself.�� F 8,a:�!lreturnK D
end� �

  �  �  y" By default, the given � �will be made Q 1 to(  Fpsitory � �,
" unless '0' is passed as/ �4th argument.
ELG$, ��([8/#
:�== 0 || !a:1Y	4 ��I *)
�g'�1://��:stripslash(�R) . '% z �
  U�  U�   " Hgdiff, Hgv	 � {{{
  V�   I �" Otherwise, useW�	1 or 2 revisions specifiy�.extra parameters.
  e�  f�   �call s:AddMainCommand("-nargs=*� # :( �HgDiff('%:p', 0, <f-* _>)")
L vM 1M �  f�  f�   1Fsum, Usplit/ 7f� Z�   6g r �Summary(file]#, K XB  gz y:�j  k�  y3sum�
5� �%	2\ 1�"] \ 
2��}E  }Q   �0log� f3log��}�  ~	  �pLog(is_�"Q" Get�   �Qdirec�Cto g  e Pfrom," �figure ouC �some nice,0s (6 �current z !orK Hwhol &).�� �4log�0expU%'% t0 �'.'
  ~  ~<   D� /If� i�,� �� ��~Y  ~�  �M1� X �CFullG1DL1Runu c@N � 
l foutputj %Ru��'log', '--style', shellescape(sY  })Xc >,� vemember��that opened this�'.
� riginal(�  �i  ��   {4 'b:e
nlogged�	�� F � � �
  �^  ��  "�� / n��! -buffer L?YrevedI�Log_FileRevEdit(C	
��  ��   7i �nnoremap <i @> <s�t> <cr> :p  �   C � ) cV� \ xC-E>  :� a 
�
�  ��  �F   t�	�autocmd BufDeleted 	 (`�  s0, " H
�bl:temp� #  ")A��S  �r   FZ] $wab
"M K	@:hg_ (����  ��   0��=X < � * �< �	h	�� &�trace("Cleaning up '" .2
d . "',~  �  " ���x  ��   ��bM _� �normalize�	� , bcomps[�9]))W� Pompar� 8'".k r."' and %  Pfor c� 1up.� ���  �(   �   �" again... not sw� ( *�do here...
@ � `Revert� 0to BZing: U)H �x'2 �
  ��  �   R��I#, 1v',: v#��,  �   T^ 2 P_ s` ��E  ��   �L	0? - x�=customlist,s:List/WDirs  	
#(
m ) qs��
 m �"�� & 8FKfull�	
�
  �[  ��   >e�3ead� O�x('cat',m  � ���  �   VJ V'-r',� ]b "�^ *  � @ = [� ��Q  ��   2�0 | Qrev2 > _�  �> 1> ��-  ��   @> ,� d��  �#�H 
c@ D ��0  �s   � , � ' ��3� != '' && ..'[Fadd(l ��5��diffargs)
    }u     U  ��       9   '����
Ex� �6@"�5"�22�ş<              '  Z   4    execute '0read !' . escape(l:hg_command, '%#\')
  ��  ��   	    goto
    }�    q  �8       :   (�����!�䚩]
=eߺ�j�3`�5            4m  B  > � �    command! -buffer  �Hgstatusdiffsum   :call s:HgS �_DiffSummary(0)
P vQ r1)
  B  $ }G �nnoremap <a �> <silent> <C-U> :� _<cr>
> H> v? B  K� �+function!� � vertical) abort| �" Get the path of Afile	 �cursor is on.1 alet l:- =i �GetSelectedFile(). �split_type = 1 Tif a:� /  2 Qendif
 �wincmd p��� � ,I � )
endfunction

    ;      ��       ;   )��������*=M�q�����1�+            4�  B  � �, gif !exists('g:lawrencium_annotate_width_offset')
    let - � = 0
endif

  �$ d�" Hg1 � {{{

function! s:HgA �() aborts �" Get the Lw � path for S ud file.� !l:' �= expand('%:p� �l:bufnr =  9('% �repo = s:hg_ ( s Cion_d 1 F.Get� RPath(� 4, '� C', 'j � �	Check if we're trying to� p someth �with local changes� Ahas_ a_edits�
v_status� qRunComm! #',, � +if; s!= ''
  �call s:trace("Found� �  �D'" .��. "'. Will� �parent revision."z � 	1" eK.if, J �" Just open7�output of c./ �echom "L� `und, w� Hshow~Eions�� V �xecute 'R N ' .M, 2setI�nowrap nofoldenable%  �etype=hd#7lseBStorPP infoiu_1cur� {buffer.�Ocur_0
% ptoplinea�ine('w0') + &scrolloff4  	1 .W 0= &    % (� O�
1� in a spli� " o( �left, afterG 0hav�0disa  d � p @and z s@ R�B �Make both windows  -ba.� Obind
]qkeepalt� rabove v� qonumber� � �column=0�-Wh� �  is closed, res� ( �settings w�d��-�autocmd BufDelete <, >��_" (HC. ',]� �m. ')'
� 	@ �normal! zt1 	. @sync�XS@tcorrectU�E ���P_coun��strlen(matchstr(get��, '[^:]*:')�+=- 1� `"verti2rresize ?� ] � 1fixW 
mV�aQ � � b:mercurial_dir/@root * �  db- Y�
X�DefineMai�4s()� 2Add��other nic�s�m�� 3! -�	�diffsum :� �iffSummary(	�d� _m �vnoremapP� <silent> <cr> :�   �4end!
+
�BorigG!,   � zX
 � �etwinvar(bufwinnr�&a:Y �F, "&d", 0)'- 	�f ' G k", 1)'�j p (M v �'�C�+	kPv_has0V4 �, '\v[a-f0-9]{12}���0, '�'',� )5�
`. 'winS?w'
��rightbelow ��fnameescape(�	z�7Add'("T��()")

" }}}�"�` $ �
3�comps['ai W'] ==�JV �
N3ead� O`(�!-c n u d qm�full_path)
    �J      ȵ       =   *�����)JthB����n���y },R            4}"  B  � �) aif !exists('g:lawrencium_auto_close_buffers')
    let * � = 1
endif

  � �
�" Finds a window whose displayed @ 0 ha$ �given variable
" set to the �lue.
function! s:find� _e �(varname,K 2 q) abort� �for wnr in range(1,� rnr('$')� � pl:bnr =  �bufnr(wnr" �if getbufvar(+ C, a:} B) == � '
  �return l:wnr >
 Gfor
* -]� �

" Open3@ inc�ay that makes it easyA`delete �later:
" -�  Y�about-to-be previousW �doesn't have�� ,
"   just openM 3new< .d �,R d V Q withS �`keepalt` op �  �  � "so@ mactualz (^ � 9�ings like `��ame('#')`)D !isw �originalD h !wa �re before* Rfirstz� � !as� *ed�Uedit_2 ��h, path��? pcmd = ' = '
�9'%'�B!= '' H f P �hxecute3 !. :�escape(a:� - ocall s� ,+)�!��_dependency��� !cu!�Enr()b�
	��2" D~5thi{ if��is not shown�#ny(.C O_Twise,<X�lternateX �(;ingF e�� �dt �w/2buf2b & l< 0 ||#'7rquit_on�!e'5;1
   ifo bloadedV
r  P�:trace("D�  O" . F �""b� !/ 
* ?lse� �   .��s already unl� .."� b} 
"bw` 0win�-w", �" TODO: bettu�ndle case whe�0re'(/_?�!nr*w > 0 &&� ~bk  
1� af Pswitc�/!37+/� J�F.$nd�� -�	 	)if�!�
' \ 	kB  &D RS" B� �Object {{{x	 Th�`ototyp�
: Pary.
1#s:5 @= {}/ �Constructor�( �.New(number)M �5newS �copy(self)! .�"a:O " �var_backup� $ �_ = []# wwinleav% �'augroup ��:' .� 4    S_cmd!'  �H<O =O T . '>�o � (* /)'� ^end'
XBuilt�
o$fo�7: "c ))
�9�YQGetVa�	N ^ .�)\ S\ #, !	c  bhas_kef/f   [ ?] =� 
�� s/  
�  �RestoreVars(�  �0key]	Lkeys� � � Mkey,� Xkey])��"On�M(cmd� 
h0Addn�   x jz�  �z ^ S 2add� ,$ � @WinL��  }%en] �	0N� [ �P-comm=/on�  �'I � (+ ,')�� �2� �L� nsT8Get�astance�  �vspecifi[�C, orwcurrent�!no� g? 
�� N(...\�	�0 ? a:1 :
>%')_� ,C 
[&  i	C	> eG UEj � L3"on;"�sl�" ^obj =� 7] OCalls7b ; � .&in � �  [K �>"]"�<cmd�	4
 +ed*� 9 oremove/ a8 d	��tF�%� 4H0}}}_�>�  ?'   Pb  3! -�  �Hgstatusvdiffsum  :� 1HgS �_DiffSummary(1)
  ��  �<   �_(�'i DLog_ 
Y bK, "'��l:temp_file)# 0")'� ��I  ��   �%	` �&, -/ifr�� PA_for|rI <revH �  ��  ��  "� / "�B  �i  �i" Go t�@we w�$in�!go�y3log* ,B Z� gs& �.r �v  ��   L� ��   �B  �� � "�� / b� C �� ���  �   M� 5� b�9  �^����  ��  % |#Wh� gannota!#isbBd, r��1ett�w�@" ch�2
 N 
�,� 1go �	t�
�� � "&0 / #,()z'Z �setlocal noscrollbindA 9rapE[  ; S 
~a afolden�g #A m B  �� & i�Eline$at�Usourc�w`	*_t �]�  ��  ��   � infixwidth
  �� # �`�Clean up w��/.
�4Ad�m���  �9   �mA ��rYB  �{ # L�!etK Q��*of��TundersaB  �� : ]
Y L� d 9  � 3XG i ��I  ��  !UJ  �p � )isz n Y���+ifX =zU Nojund...ike main���a bottom L Vsplit����.p
�	�`_�4. '}'R�rightbelow� �	�	�/b:X / =X9 
@!�0" FnS! Usej4*to�.� �/ed� E`endif
    �K     *  ��       >   +����L$�#z�[4�2i���>r��            4*   B  �= 3   �setlocal nofoldenable
    �u    �  ��       ?   ,�����TN�o�.8S��e�~IZ�            4   B   �F �"
" If a second argument exists, it must be:
" - `relative`: to make the file path !     �repository root.G absolutG ! �
.
"
  O�  P"   <    " Get] A and �LawrenciumC �for `hg status`.
  P?  P�  jH blet l: _3 @= l:T F.GetO �Path('', ',  
 B')

� LOpen� �buffer in a new split window of� �ight size.J �execute " Dbelo8 :" .� 0 �if line('$') == 1
  3" B� �s empty, which means} �re are not changes...@ AQuitX�display a message& q
 �echom "Nothing was modified.��P�  Q�   "� �setlocal noreadonly. �Q�  S�   \. Pwinhe#=(K+ 1)Je_ ( �  T
  V0  B4 �command! -� "HgzFedit �:call s:HgS��FileEdit()
P OdiffP oDiff(0M vN M 1� ?sumM 	Summary� U T 
� refresh� R � -r�O �addremoveO AAddR  (<LA1>, 	  2>Nq[`  [�  �\  ]X   lNJB1re-B �� ^@will4"oa��contents by � 3ingh  Amatcd�Mercurial�  �"�� !0lse$�:comps['action'],��� ' (2) H  �F @ b 1@RReadC� tOutput(s U  � A  �, l:full
N Endif . R�type=hgstatus
    �r     �  �?       @   -����fw1�=Ł�'ߤ�J_�X��            4�   �  R,  R6   Z  �3" TODO: figure out why the first `echom` doesn't show when alone.
J �bdelete
  R\    D 5 ""- preturn
    ��    w  ��       A   .�����C�,��#5�TR7�����E�            4�  B  0 �*q" Deletes all buffers that have a given variable set to � lue.
" For eachD �, if it is not shown in any window,  wiv �e just d� dN I= 9 7 �  @ �switched� � the alternate
"� q before  $iss �, unless �`lawrencium_quit_on_( 6`
"	$is@`1`,� �which casf � qis clos� �o.
  �     �  �let l:prev_bnr =� �nr('#')
, (if+ `> 0 &&0 vloaded( ;   �execute "7" .P �
  >  �   �  c2�s:trace("G� ing dependency \  � �. " after� . +to{ & $in>  bw� �  �  Y   r� � 	 is� /�  ~ "[ / ;n cReturn? 	� rcur_winG "3% & #�AnewB� `.on_un�� = []
  7{  7�   ��'augroup �� �_' . self.� '} }leave'
E �  autocmd! 	� BufWinLE " <f =f >� %onx (+ O')'
� �end'
  8v �function! s:%1OnU$�(cmd) dict abort
1en(n N) == 0
�0Add�2BufW � �-command on=� /)
�(� �*� �t () � _ndif
7  �back for4  u:  a:�S ;add�,$ 4endb

  =8 /.|l>obj~
	� 3" E%  �  �B"on � "8s.
��wnumber)�� ' =4 �bjects[a:4 ]� OCall�s�� � a&in � =  [K  6 ^. "]"4cmdGOfor
�(8��  �9  ��  d�C  �j�{�ath = expand('%:p'���s  �A   / '_ ���  �h   �  Q" GetL�  /  c�this `hg log`.�Arepo�0hg_ '() Clog_r * F.Get_ RPath(� �, 'log', '')

� AOpenT	 K	 �4iew� �@jump�:it.Gbpedit �� �
  �u  �aO"�� ( F 'b:�nlogged� �Relative�  r���  �   Gq"On�
#('�dHgLog_ 8)���  �9    �	< o	, R�  �S� "�i   J� s�style_file.0"<s p>:h:h")�/resources/hg.8 "�"�� !^m1lse�	�comps['a�  ']��Ut" Log (=))

?  F= -'
	}RReadC�tOutput(5!--� � ', shellescape(� )�?lseh G�, l:full=u �  �setlocal 3 �type=hglog
    �i    �  �!       B   /�����{����_��xY�l�^            4�  B  6� �* Qfunction! s:Buffer.GetName() dict abort
    return bufn  �self.nr)
endG b

  �v   5 �let l:cmd = 'edit '$ ��  ��   ($ ( �rightbelow spl4 ��  ��   )4 v5 ��  �G   1 sexecute5 �. l:special
  �  �.   " Hglog, �this {{{# �/  �   �7�HgLog(...),�" Get the file or directory to g �log from.5 �(empty string is for) �whole reposiE &)
  � = s:hg_ ( �if a:0 > 0
1cpath =9  ��RelativePath(expand(a:1))
  �>  ��   c� �Lawrencium P � `is `hg� #`,� �open it in a preview window and jump�it.
  �$  �W  "�� & O� 1is_Q3= (� �!= '' &&i�readable(� AFull� 0 )� ��   ��   S*Z ,�command! -b1rev�T:call��_FileRevEdit(_ ��  �\   KN �nnoremap <N �> <silent> q  �:bdelete!<cr>� 	� �  �I  �@    �� ��  ��   �)5v =2 � GetSelectedRev(RClog_&�s:parse_l�"_pNfbufobj//)
c/�c  [' �'], 'rev',�  � ���  ��   �� mDdiff� s� `�@  ���AddMainC4&(":
*�('%:p')")
9 �-nargs=? -comp�=customlist,s:ListRepo�s�c �<f-args>)")
    �9      ��       C   0�����k��]Ʀ�剣сS� s�
v            4�  �#  �  �   "" Mercurial Repository Object {{{
  D� �v" Lawrencium Files# �
" Read revision (`hg cat`)
function! s:read_lB �_rev(repo, path_parts, full_ �) abort
    if a:& �['value'] == ''
  pcall a:U .� �CommandOutput('cat', a:c : OelseC _'-r',� ` �ndif
end 2bStatus+s .% 1&  0s '&9  
 �setlocal filetype=hg8 +2Log(�log`)
let s:log_style_@ � = expand("<s �>:h:h") . "/resources/hg_log.8 /"
o
?loglZ1logY-� � ', shellescape(� )�` ;�<log�EDiff�Odiff� # z  l:2 �args = [] c�idx = stridx(�D',')�7 5> 0^R Brev1N  C O '0,F )C 2C � 6+ 1D %if� F= '-^�v ].  9K 2K 1K ; ,� `� �!Um c�. ]7C� �� ? && .�6dd(l d� D '',� )�   
 �nofoldenable��Annotate@ �
a* �� O #',�1'-n u d qQ� �Generic � &�  � _  er�{��\'rev': O /('�;'),7  W7  " 7 �8 # 9 Z; �= f? ' )@ }2 �
 
(��s:trace("1 8ingE
 �S: " .E)�T 0h:parse�    (7 )if6 o['root��s:throw("Can't get r�
 8 ^ from� 	�!has_key(i,� a>?'])� �No registered E R for 9 � S 	�  0" C\ >theT (.
�!pob0hg_ (E��# =? .% M_dir� = 
0R� =�[� ]^R (� 
},� )#QSetup$�new buff1 � LonlyG�modified �bufhidden=delete �!nob  Dgoto� �Remember��
po it belongs to and make/  & McTps avail��4b:m�����DefineMain�#s(1`returnO	|_Write 2 	p �augroup 6�s
  autocmd! A Bufs7md 2 S://** O exe�V�'<amatch>'))Z �  [ Z 
[ � 0END��}}}

  ��  �2        �T    -  �       D   1����*��xc~����E�1�a24��            4  �9  ��  �   'function! s:HgLog(vertical, ...) abort
  ��  ��   z    if a:* #
  �execute ' � pedit ' . l:log_path/ Nelse8 / �%ndif
  �I  ��  Kcall s:AddMainCommand("Hglogthis  :# � �0, '%:p')")
< v= 
< 1< �-nargs=? -complete=customlist,s:ListRepoFiles � �  0<f-G >i 8vj  1j P>)")
    ��     ;  �A       E   2����X�1!ѳa�d�Ty�%�            4l   B  u� 3   �return
  w�   "{2   "}�  Pturn
    ��    �  ��       F   3����L��0{m�f�`(�-�S�}W            4�  B  �� �J�" Hgvimgrep {{{

function! s:HgVimGrep(bang, pattern, ...) abort
    let l:repo = s:hg_ '() � file_paths = [] �if a:0 > 0
  �for ff in 0 I �ull_ff =r �.GetFullPath(ff)3 �call add(� ,F . aendfor _else
B | �root_dir . "**")
K &if�  ;g �xecute "t�! " . a:Z H  Kjoins N" ")� Q P !�  �!

� �s:AddMainCommand("-� � -nargs=+ -complete=customlist,s:ListRepoFiles_:V V<P p>0, <f-T �>)")

" }}}

    �q    �  ��       G   4���� .���W��:D<0y,��a�_            4�  B  � �3�" Clean up all the 'HG:' lines from a commit message, and see if2 �re's
" any" � left (Mercurial does this automatically, usu	 0butD �-pparently not when you feed it a log file...).
function! s:c� _� _# A(log	 �) abort
    let l:� a= read+ %a:- '  �  h Cter(/ �, "v:val !~# '\\v^)"0 sif len(2 Dcopy7 )8 �\\s*$'")) == 0
  creturn Vendif� Rwrite� � � ? T1
endb

  F�   & �	setlocal nomodified
  G ) :$ �bufhidden=delete
 ptype=no� R
  M7 ��" MQ series� p�_lawrencium_q$ �	(repo, path_parts, full_ �1nam��split(a:= �.RunCommand('V �'), '\n')< Ohead; 
�applied', '-B OtailB 
/unD E Didx � �curbuffer =Y � 3('%z 1for�3 in� 5�setbufvar(I 7, 'jPpatchV b_' . (� T+ 1),R[ *])[ bappend0 q, "*" .� ' � W �?for�   D� d�  1sets�#hg^g�NL  N�   �  �\'annotate': / .('
' :),
A �@ �
>  }
� 's:*  � �_customopO  L{u Pstatut �1
  Q�  Q�   ���!has_key(Y  ��1['a� '�M � Nonly � ��	[�  ��  �_   j 
 .�as_valiFtI .5 �
  ��  ��  "�� T" HYY {{{
6BHgQS(a" Open� m" i �preview window��jump to it�  �� 0hg_ (� �# =& U.GetL�`Path('�y3, '}� execute 'pedit �L  �wincmd P
� AMake� � &a m  � 4b:m[F_dir� @root 9�s:DefineMai�4s()} �Add some c +smapping� 3! -� �]goto  :x �D_GotYM  ,?	M 	REditM( T �-nargs=+]  re!T R @(<f-9 >�g�dH_k�nnoremap < �> <silent> <C-g> :1O<cr>< e<  C q� b!7 	�op_GetCur�
P}N%� poB�getpos('.'�	g�?'%'�	H O[1])� R� �o ? = � �
9 �
G�error("No )  d go  ;.")�
�
lG	  ,8',  ; ?dit#� ((c_+!< .�/$ew�  '"=�join(a:000, ' ') . aw +',� ,` r	��'2/1'�.�u%�T �+er�	 �aa tempW
 � �
k� 1 YF  %phg-qref� -0C.txt� 
��Q 
,"0,�QEnter� ;new� �M�� ~[=_  f �cursor(1, 1)5$itG�pthat wiR !ctXo changZI b�it is saved oclosedo* �( =
cw� � D D	ABufD5 �/	"_EA(exp� <a` >:p'))
3	m �    �.ab6� = :: C� %��	
��>� 
[Empty�� 1Get� @ ��  Rgiven��0hg_�	a = ['-�8-l'L]56f',H 
� 7Add=&("���()")

" }}}

    �    �  �       H   5������q3k�0]]Lw�졶/            4  �6  w�  x�  function! s:HgStatus_Refresh(...) abort
    if a:0 == 0
  �" Just re-edit the buffer, it will reload �contents by callingJ  " �matching Mercurial command.*  j  Gelse@ R� Sgiven� : �xecute 'buf ' . a:1W  �ndif
  ~ $ G` �member which] � this ise rlet l:sG@nr =& �nr('%')
S b 2 �
T "AtA �point we should be in4�mmit message� �" Let's r�/ | � window wheF $at� �gets deleted� �bufobj = s:* a_obj()"  �# A.OnD? !(' 7  Y�. ')')
  �� 4 @
R� � a  L "�� L *Psh()
    �    t  �       I   6�����l��D�D��w}'�]�a            4B  B  @ �3 v" Surrounds the given string with double quotes.
function! s:add �(str)
    return '"' . a:str . D
end; �

  F�  G   96 �let l:rev = a:path_parts['value']\ $if% �= ''
  GW  G�   T  �call a:repo.ReadCommandOutput('cat', '-r',� W �), a:full_� � )
  L`  L�   ;  � �diffargs = [R @2) ]G _�  L�G '1G ��  M"   VG %,� ���  �  ^ �if type(a:1)w H[])
�  �"en$ I>= 2 	�1�O1[0]$ 2$ 1$ Helsei O== 1E i hendif
S 
? 	
8 p  ��  ��I3 5B = l}�GetLawrenciumPath(l��, 'rev',h  f���  ��   vDs �,�a,sa+sa���  ��   ����! -buffer -n��=* Hglog�asum  :��s:HgLog_DiffSummary(0, <f-5 ?>)
S vT S 1S �  �  �Q   �c Z trevedit% 
� �FileRevEdit(�� � � � M � ��  ��   �Y �nnoremap <Y �> <silent> <C-U> :�_<cr>
; H; v< Ocr> < $q��bdelete!7 B  �B ( {�� 7D> � 	� = V� � ���  ��   @���vertical, ...) abort
y[���  �'   �@[a:12, �;  �T   *, �'p1('.a:1.')'6 �]  ��   [6 Usel =� �GetSelectedRev�
c 7 e  g � �  
  �  �c  �C �CFull�1log� [' A'])
� q" Go to	�window we were in before go$	& 3log* ,B �and open asplit dathere.% �wincmd p
� �.&a:�)K	
�R:a:0M2 4 	-4 / $ &]
� N_ x 'if+f 	/ 2S  �0hg_ '() abufobj �I_obj" H$ uparse_l� (G  ��Name())
�%�  ��  ��   1ne1forsmsT fromz�  ��  �   7y9�>�, l:revs)
    ��       �e       J   7����:��sPp�������@I��              pn  p�        ��     �  ��       K   8����Fh�ݰ0���K�l��S+w��            4�   �O  x�  y�   �function! s:HgStatus_Refresh() abort
    " Just re-edit the buffer, it will reload �contents by callingF   �matching Mercurial command.&  b �
  #  j  ��  ��        �R     "  ��       L   9������b�ږdz|�Pu"�`�޼�               d   x   " Version:      0.3.0
    �t     �  �
       N   :�����Ǔ�]C=�Ra4K*��\�            4:  B  R� �1 V    call setbufvar(l:curbuffer, 'lawrencium_patchname_top', l: �s[len(l:head) - 1])
  �  �I   8b elet l:@ � = s:HgQSeries_GetCurrentP" PName(D ��;  �t   ;D c) _G ��  ��   A� g� ?'%'� Pop')
    �L     "  �
       O   ;�����l��`��g����Ȓ><               d   z   " Version:      0.3.1
    �n    "  �?       Q   <������I0�f*��
5�F7�pZ�            4�  B  � � ?    let l:repo_path = substitute( �, '\\ ', ' �g')
  )�  *-  K �hg_command = .< S . a: 
6 �for l:arg in	 s_list
  �if stridx( � e) >= 0# } "~ l U. '"'A OelseN M G Sndif

 �for
  .] & &W hPescapd_! \T�{�  {�   /I �xecute 'edits 7 �filename, ' \')
    ��     @  �s       R   =����~�-��k�� �c�˝�              ��  ��   4
    " Re-edit the file to see the change.
    edit
    ��    '  ��       S   >����ӻ�`����#qχ\0ؒ���b            4   B  �i �	     let l:repo = s:hg_ � ()
  ��  �   9) �branch_file =9 �.GetFullPath('.hg/& 'E ��s  �  �E �ookmarks = ''
  a ) �.current')G 0if : �readable(S & � Pjoin(: /fi: S, ', g Wendif� 2lin� �prefix .*� hstrlenV [) > 0� H 	 �. ' - ' .� � 8 �l:suffix# �return l:line
    ��    �  �Z       T   ?����<s�seM�ix!�v�8����Y            4  �$  ,�  ,�   M" Runs a Mercurial command in the repo  �reads its output into# �current
  - �y    function! s:PutO7 �IntoBuffer(j �_line)
  �let l:was_b' �_empty = (( �('$') == 1 && get 1 &''F �execute '0� �!' . escape(a:x g, '%#\9 /if~ � " (Always true?0   "g �' inserts before�sor, leaving a blank ~ � which needs to be deleted:a �normal! Gdd� Sndif

 k
���  -�   - Ocall��l:hg_command)
    ��     8  �p       V   @��������;���Ɯp �'
�              r:  rP   ,    if (line('$') == 1 && getline(1) == '')
    ��    �  �r       W   A�����f8�;�A��%Q������            4k  �  t  tf   Q    command! -buffer  �Hgstatusedit �:call s:HgS �
_FileEdit(0)
  u   u�  I] tabdiff] �Diff(2)
M  J ?sumM 	�Summary(1T vU T 
� � V T 
3U�y  yU   >J �nnoremap <d �> <silent> <C-D> :l �<cr>
  |<  |b   ,function!��newtab) abort8 ��  ~F   � �let l:cleanupbufnr = -1 Rif a:@ d == 0
� �(" If the file is already open in a window, jump to that .H �Otherwise* �e previous2 C and\ t  &reD `for nru �range(1,5 rnr('$')� � b� 1win� ?(nr$ �path = fnamemodify(bu (B z), ':p'; &if: P=# l: 3 +
  pexecute� �. 'wincmd w'( ireturn gendif
 5for J p GelsejBJustD`a new ��so we can �c�" We don't use `tab0 `` beca �it messes upF dcurren�I  if- phappens�bn B sam| 
v P'll j� @have/ �f �default empty �vcreatedH Vtabne� �#'%�eB  ~u % Q�	9 >�`'bdele	 + .1 	] ��!  �K   '�0Vsplit���w  ��  ���also need;sranslatT = Q mode%Pit...� $we�
G  'ed�$P, `Hg� a` onlyk ��do a verticalI r R(i.e. G=1).gL' 0 !hgB; A= a:
 � ;= 2�M �Q *1
7�R )' �j'%:p',\  ����  ��   .�����X  ��   $� >< 3��  ��  ��   *� b  l:|,J  � ђ�  ��   !" H� T, Hgv	 �0{{{- ��  ��   /� �,�V, ...� "�� / T	�  �  �a  �5�QDu  �z2f `� `�K+asJ �'i�"llBRreloaH(in4 N 3ab/� [�some reason, which � !s �t��<losL ($ �folds get collapsed again,� s�Rs mov��start, etc.���� ��cescape` WP�n  ��� �bufexists- �'ge 	4 �� ;B  �K / ��1See

@ents� ve �ut avoiding�.�5� � �B��   �2   >7B  �R # Op�AddMainC�("-nargs=*K:9`2, <f-- 0>)"B��Z  ��   ?�Fsum, e� r�"�� $ 7,
�3�cmd = '�r '
  �# / \� ��� 3� ���  �l   � ^f ?logf :Log�c 
U U 2U U �
  �}  �`  8�e \ ?rev� b  �1Rev�>ZW,(0� TO 1O  JO 2D���  �   @cQ( :h O���  �   )�| ���  �O   Y�2��	^ � k	@revs� ��\  Ǐ   0� 	a	� q�F  ș  ���  �	   2B	�, l:revs)
    ɕ     1  �q       X   B����u0]}�'������;��iى              0�  0�   %    let l:path = fnameescape(l:path)
    ��     i  ��       Y   C����l��+�g���X(�ęo�            4�   �;  g�  g�   2    execute "source " . fnameescape(s:usage_file)
  h�  i   :>  8 �_type_mappings)
    �/     C  ��       Z   D����ʱ�$���v��Y���`�Z�i�            4D   �%  �9  �T   8    if l:cleanupbufnr >= 0 && bufexists(! Pfnr)
    �r    �  p       [   E������!U�z���zp�,eH��            4�  B  � �- �if !exists('g:lawrencium_status_win_split_above')
    let . � = 0
endif

i Oevenh  - g B  M $ fB �l:log_opts = join(< �(a:path_parts['value'], ','))
= �cmd = "log " .R r �'  M~   [  �call a:repo.ReadCommandOutput(S �, '--style', shellescape(s"  p_file))g ��  M�   hg F�, a:full_ t �r#  rS   �p /if�
� �execute "left% A<  i 1 =els: �rightbelow; � 
 �
  s�  t   �� !Ax �setlocal winhe� =z � (line('$') + 1)� oesize * � �  �m  �|   .� �$a:0 > 0 && matchstr(a:1, '\v-*') == ""
  �D  ą   �: l�! !+ /  ��a:000[1:-1�~7 1 o
1 � 2= l�EGetLyRPath(� �, 'log',f  k"ō ! R���! -buffer -nargs=+ Hglogexport� :�s:HgLog_E PH@(<f-4 >^ "�� ��function!4 �...) abort� p @_nam�Da:1
[�empty($HG_EXPORT_PATCH_DIR)N2is_D arelati(�a �$^/�G �" Use the + � dir only� �user has specified a i & E O3 �works on Unix. Not sure how to check �Windows.> /if�  *R . "/�, J�^�K== 2l 1rev�2�
! �� GetSelectedRev(� �5 0hg_ (
v_Uq = ['-o�	�B-r',| 5]

�3Run�"('M *',X )5 �echom "Created�-: 84end� ���H  �   �eAddMait "E�* -complete=customlist,s:ListRepoFilesjaE(0, X?")
i 4vj  1j P>)")
    �.    � 
       \   F����I�F5��Ƕ����c�����            4H  �  �*  �|  "�{ �; ]    command! -buffer -nargs=+ -complete=file Hglogexport :call s:HgLog_E �Patch(<f-? �>)
  �'  �_  �  �" Use the p. � dir only if user has specified a relativ0 $h
G  if) �('win32')
  �let l:is_b _A @= (m bstr(l: �name, '\v^([a-zA-Z]:)?\\') == ""Z Oelseg 0/Z  Hndif� V  z  Z � = s:normalize(;(
  �s:stripslash($HG_EXPORT_PATCH_DIR) . "/" .[ � Pndif
    ж     C 
       ]   G�����vQ�x�ANh�h�w|+            4D   �%  �&  �^   8    if l:cleanupbufnr >= 0 && bufloaded(! Pfnr)
    ��     1 /       ^   H�������M���؁�f�O��B��              ��  ��   %    execute 'lcd ' . a:repo.root_dir
    �*    4 �       _   I����_0�z�{
�2�'�c�8���2            4)  �  S�  S�   �    let l:cmd_args = ['-c', '-n u d @q']
3 �if a:path_parts['value'] == 'v=1'
  �call insert(e  Q av', 0)) eendif
/ 9add, pa:full_p )& �:repo.ReadCommandOutput('annotate',� �)
  �  ��   vB �s:AddMain@ �("-bang -n1 �!=1 -complete=customlist,s:ListRepoFiles Hgedit :S �HgEdit(<J p>0, <f-N 0>)"� �ۼ  ��   �function!4 A� (7 �, verbose, ...) abort� �" Open the file to �  �vneeded.�Z0 > 0�� "a:l 8a:1��
  �j  ܷ   {�S = a:� " ?�f : ''
) � 1ion�B = l��GetLawrenciumPath(lC*, �j  ,���  �  h� b �last_token = match(getline('.'), '\v\d{4}:\s')� *if< <� �choerr "Can't findiaend of � � columns."D IelseQ X) �_count =� �+ 4 + g:l_�_width_offset� �xecute "vertical resize " .p 	8 Psetlo/ awinfix` � ��  �  ��  "?"�&�*-� :w� 1� P>)")
    �^    ' �       `   J����8$�8X�I�N����ͣ�            4�  �  S�  S�   4    let l:cmd_args = ['-c', '-n u d �q']
  �=  �N   " Hgannotate, Hgw � {{{
  ��  �;   �  �if a:verbose
  � �last_token = match(getline('.'), '\v\d{4}:\s')A  < �_end = 5  /eln )2n 3n �ndif
  �  ��   a: �column_count =� +Z � + g:lawrencium_b�_width_offset
    Յ    = h       b   K����Tf\�ݸ�(*��i5��'�            4�  B  � �* w" Returns whether a path is absolute.
function! s:isabs# ( q)
    rD 1 a:; �
=~# '\v^(\w\:)?[/\\]'
endG �

  %N  %�   iA )ifZ &a:\   �call s:throw("Expected relative� U, got�  S: " .�  )`u � � ," Gets a repo-I � given any �.
  &  &%   $� @execc �'lcd! ' . self.root_dir0 �Y  &m   0 P! -'
    ��     O       c   L����jS��z0[����f�3x�U�            4l  �  /�  /�  `  �1" '0read' inserts before the cursor, leaving a blank line which
L �needs to be deleted... but ifS �re are folds in this kng, weN �must ope' �em all fir  J �wise we couldn � LwholK �contents o� Q last� � (since Vim may closep +byI �default). �normal! zRGdd
    ��     m _       d   M������Br���<�dEK�	� &            4�   �  u�  u�   9  �0execute "keepalt leftabove split " . l:status_path
  v   v2   :E �rightbelowF Ppath
    �M    � �       e   N�������.l�C���̀�T�a��y�            4�	  �&  �~  ��  +    " Reuse the same diff summary window
) plet l:r- �_id = 'lawrencium_5 �sum_for_' . bufnr('%')< �split_prev_win = (a H < 3) �args = {'n '':{ 0, '	 H -':[ ;,
  "\'" smode': x }( �call s:HgDiffS� �(l:path,� �)
  ��  �-   =function!6 �filename, present_> �, ...) abort
  �� 2m
�QBuild��correct edit command, and switch to( �s, basedN !on# � a� � arguments we got., �if type(a:� B) == %0)H`" Just; 2 a � KH �evalid_�tf {Gelsed !Go� @plex� s_ 

P O Sndif
�First, see� �we should G� an existingFE ?@some�3ferL �variable.�`targeto|nr = -1�x = get(� (, O, 0)[8  T, '')�6 [!= ''1� rs:find_� _� (Y1�,if@ e> 0 &&� I!= 3hp" Unlesd�'ll be opena�in a new tab, don'tE�anymore, sinceO rwe foun5exa�  fwanted"}0  ��trace("Look� 5for^ vith '".B."',� J: ".*)
c 1" Io0did�  r � _thing� |�current or�SviousO � /.
�;< 0�L	?��A `U 3('#�fAWill� � � O
S]0Now� !'sK`what kc#ofS +@use,� @any.y��  ��   � ,�= 1
  �  �   �
$ 2$ _E  �]$ 3$ ��  ��  b$ � �All good n�Tproce�klxecute# �. "wincmd w"%2 �'keepalt � l:, .� Tecial(1Set�#ID� ha/e.j
�1SetTN H a� �()Q qetbufva /, � � �  �k  ת  ��, l:revs)
    �L     � �       g   O����-�1(��,�ẟ����5lND            4�   �  %�  &.   M  �"call s:throw("Expected relative path, got absolut �: " . a: �)
  &8  &W   0U �return s:normalize( �(l:root_dir . a:path)
    ��     Q �       h   P����˼��J���)dՑ�N[&�            4T   �  *  a   H  �return s:normalizepath(simplify(fnamemod  l: �, ':p')))
    �1    d �       i   Q����PN�Z3-d_(�:C��_ �            4�	  B  'u �x" Gets, and optionally create � temp folder for some opera. � in the `.hg`
" directory.
func# �0! s:HgRepo.GetTempDir(path, ...) abort
    let l:tmp_dir = self5 �FullPath('.hg/lawrencium/' . a:L )A eif !is� (M  # �a:0 > 0 && !a:1
  �return '' Uendif �call mkdir] z, 'p')
- I % D
endb

  <� & #� �newBuffer.cmd_names = {}
  >&  >j   �X. �GetName(OMdictT L ` = buf
 (Yn� 	5 3 rmodify( _, a:1�  " �
  ?,  ?g   ?V z �var_backup[a:var] = getbufvar� !,  b)
  @K /�  �DefineCommand(� 	� J== 0��s:throw("Not enough parameters�m Ls()"f 1N@flag�+'' dcmd = �Oelse: �
; 2� rhas_keyNO U 	 )� B '".) �."' is already d d�b9 ".M	
 o�r('%') !�/nrz �You must move to` �."first before� �ing local c��u[�  u1#[real_��if type(�)� '�? 0 � �execute '� # -� ('.@ D.' '~' :cmd?9let!8`has no�/enz?let�4del�x
�  rew /�.s(�s ��{in keys� 53 /orx�2pMoveToF� Window(�bwin_nr�]winnr�$ ?< 0 :a:10	5! w� �s currently showwO� P.'win�(w'T16Pion

    �    B !�       j   R�����/�R�F�p1�s�����            4�  B  hY �3 �    " Remember the real Lawrencium path, because Vim can fuck up2 �slashes
M �on Windows. ulet b:lQ _Q P = a:	 �&

  ��  ��  8function! s:HgStatus_Refresh(...) abortX �if a:0 > 0 k �	l:win_nr = bufwinnr(a:1)% �call s:trace("Switching back to sv ! w� 4 ".Q B &iff < ^ �hrow("Can't find)	[ �anymore!"Z Vendif fxecutem �. 'wincmd w'& � " Delete everyt� !inp �buffer, and re-rea� �into it.K qTODO: I? �ory I would only have"�do `edit` like below when we'reO  alt y� � �, but for somp1sonY�just goes bonkers� O �weird shit happens. I� �no idea why, hencer �ork-around he� �to bypass) �hole `BufReadCmd` auto-comm?�altogethO � M  s � Vplace\�normal! ggVGd� t s]File(3&vreturn
1�
  ��  �&   �	5buf	�nr('%')
  { �3= '� s$'.F W.')'
� �HgCommit(a:bang, a:vertical,]   �filenames)
  ��  �   :�N L J H �B  �� #��etype(aw B) == &[]8�cu W_pre_G ?[0]= ?ost> 1> � ? 2? Oelse� 0� (� 0�B  Ѥ 'e0�exists('P ') &&
   \�B �/""M � F!= 'h<E� p9 �O: ".� 	Z �8 -B  Ѿ "p�EK ea pre-�  & c is on��W��< ��	�
��?pre�	� 
�2 
w"�l =w
}?ost~,�= �$	$�/os	
� �3 	p��y  �t  � �AddMainC�0("-U� -nargs=* �p1	�=customlist,s:ListRepo}Bs Hgx , :�<N B>0,  0<f-X _>)")
� :v� 1� P>)")
    ��     "�       k   S����
-ʐ�>\*>�},uzp            4o  �  ��  ��   ,    let l:rev1 = 'p1()'
 2 � '
  �|  ��   $  	D `a:1[0]0 ��  ��   , 	R
  ��  ! �diff_id = localtime()
  �7  ��  ���  ��   *] �call s:HgD?   UThis(O  B o�<  �]6 ��  �#   �2 �" Don't use `& �split` beca Pit wiU Pet `&!   �fore we get a chance
O �to save a bunch of�  B �tings that= X @want4 @restU zlater.
?�  �	  ���7  �f   #�	. v/ "�T / &&��a  ��   +function!3  1 � abort
  �8  �[   [i 1if 3
�� throw("Calling # �this too1 on@uffer!")? �return
  �e (OV �race('EnabW A modO 0' .Q �name('%'))c�w:lawrencium_4 �off = {}" 
!['� o'] = 0* Awrap* 0&l: 0 �scrollopt5  : Jbind;   < hcursor<  < �foldmetho<  < hcolumn<  < Sa�) I �autocmd BufWinLe�<T>qCleanUp���  �=   1� 0Get oWindow� ��v  ��   V� if%�winvar(nr, 8L) && � H') =� �  �  �\   po�If we're not leav�0onex2ourw� @, do' ching.
� !� � || !exists('k'���  �   x�@urn .C  in-5and�;its��_nrs =[�  � b�^  ��6h��  �� � [ [�'.a:1.')',� ���4  �b   .6 	Rl:sel8 pl:sel]
    ��    
� =H       l   T����
tІzFqF*���{
D�Z��            4�  B   �5 yif !exists('g:lawrencium_record_start_in_working_buffer')
    let 6 � = 0
endif

 < �  6call s:AddMainCommand("Hgqseries ! AHgQS @()")B �= s  �" }}}

" Hg� �  {{{

function!= R �(split) abort� �l:repo = s:hg_ '() 1ori� ! � I_obj$ �tmp_path =1 �.GetName(':p') . '~� ': pdiff_id9 �ocaltime()
! 0" SL # �ing on the current file, enable some c>!s.? 9� dDefineb'.U', ':j- _A O()')O  � iP zExecuteR    D  UThis(& 1set� foldmethod=marker& ��window and ope/!pa.�revision i � right or bottomK A i. Keepm�= 1lef< 4top3 �.. we're goingO �to 'move' those changes into� . cm�'keepalt� abelow � ERif a: A== 1 D vE �v�  �L��Path(exp��%'), 'rev��e�� �. fnameescape(^ � �D neweOwith�sf as a � 7 .N �Let's save �o an actual2!re�it like that (Cchow weJ �could probably do1 �  `:` � as` instead but `d needv !re� K �bunch of other� �settings,� �Vim weirdly creates an1 UackupM 'phen you�  � )).}��write! '��)8 Oedit7 ��bufhidden=deleteP� b:mercurial_dirU@root * O?forU; 
;+_n@ np �_S# !^��etbufvar(U ?, '�  ?%')@ #�  ',_!nro8SHooku�� G��c��$ A.OnD�/('�9 Nquit< �5"s:F NsQSMake -Zpb!of  x.�3�  �SetVar('&�ktype',� �/ifi	0winp�4end	!	�$	4if '
2�)x !" �S flag�1, l��just cleanup.�2buf�=J' ?O :
   \	2 MC� 4Up(� )* qerror("� � : User requestew �	]�
Poperac&."M greturn�d!e	 J� qthrow("@�doesn't seem�a� ,$
�thing's wrong!") /if�sSwitch �'+  ^ q $'s	� <obj��	� D �.MoveToFirstWm ,()[Z" Set(�q	�3 z�x
7 d	_~)�  =  �	 3  5 C]s = [3\�CPost
kPre('.� .', "'.})� �, '\').'"9 � 8 ?)',� ?ost� :� ��  '� ]�qtrace("7 ��f��
	�: ".string()�C@ 4(0,,M/, �ic	"*, ��0" JPTbefor� � c, we s� �Trigin ^�J   � ll�tT .s�Tpost-�  HutWe alsov `on 'auC � ad' temporarily�� 	��@e do�h� �@nnoy/ Ppopup� TgVim.�� has('dialog_gui(q
+a:g%'&� <, 1
UB��P Ia1	 il�D  re�+(aX
 3.'~ /')  C��%edORusing� +� 	]� lO200m� u�
� @ 1ver T2-up��from undernea��
G �7�� .	_ up!
L		r> Rawdefault.�Y0 <�
���i� �Fa disca��	��
K
�^
��	W�i��directory�
K � � �
g� 4now� �
 "se#a�� ,�phich wiDuL B �2(it 0ear�u��UOup).�
} � | !���	p4Get� �� e�DP/varif	N�a>��? ||�!�
  �&upA els�"�	 \"j a�A That�uspiciously incor2!L A0/."w4B)2 �z/unq" �	��0E (0�5 v6 P1)")
    ��     0 =l       n   U����������;~�Rƾ�m���              qK  qK   $    silent doautocmd User HgCmdPost
    ��     ' =n       o   V����MYx���Sz*1JGv�J�Ϟ            4(   �  2�  2�     �normal! zRG"_dd
    �     z =T       p   W��������;����|��	f?}�a            4�   �  Y�  Z    N  �&call a:repo.ReadCommandOutput(l:log_cmd, '--style', s  �_file)
  Z	  Zq   [Z 9� , a:full_path)
    ��    � ?�       q   X����Bh�_�\f�v�%s�5qD            4�  �  �  �)   >  �\'avoid_win': winnr(), 'split_mode': a: b}
  ņ   8> blet l:B �id = get(l:valid_args, ` �, -1)
  �y  Ǔ   D �if l:target_� � <= 0
  �y  �' P" Andq `'s see7 �we have a� 0dow �should actually ~ %.
i � �>= 0 && 
(� (==8 /||2 <\ O
B %))A �for wnr in range(1,4 Y'$'))i !if+ !K � � call s:trace("A' `ing us %&".A  r\", now? �: ".wnr)2 
2 � ) Ybreak gendif
 �for
    endif
    �3     " ?�       r   Y�����َ�󂭵�_�yc��~M               d   z   " Version:      0.4.0
    �U     B{       t   Z����ft
Z��31�&�w�g%�+|�            4�  B  � �# g    command! -buffer -range -bang Hgstatusrevert0 �:call s:HgS !_R �(<line1>, 	 2	  B �>0)
  �� �zfunction!C   9 pstart,  Pend, D �) abort
 �" Get the selected filenames." elet l: ( =j CGetS8 �Files(a:v %a:x �['M', 'A AR'])[ wif len(^ �) == 0
  �error("No� Ss to A#in� �ion or current� 5.")I areturn cendif
� RRun `L � ` on those path� A" If��modifier is spec $d,� �with no backup>Arepo90hg_ (  a:Y 
� 1ins��, '-C', 0)� 0 ` R.RunC}"('� (',�)� befresh��r window� �/ �()
endfunction

