
" multi-encoding setting
if has("multi_byte")
"set bomb 
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,sjis,euc-kr,ucs-2le,latin1 
" CJK environment detection and corresponding setting 
if v:lang =~ "^zh_CN" 
" Use cp936 to support GBK, euc-cn == gb2312 
set encoding=cp936 
set termencoding=cp936 
set fileencoding=cp936 
endif 
" Detect UTF-8 locale, and replace CJK setting if needed 
if v:lang =~ "utf8$" || v:lang =~ "UTF-8$" 
set encoding=utf-8 
set termencoding=utf-8 
set fileencoding=utf-8 
endif 
else 
echoerr "Sorry, this version of (g)vim was not compiled with multi_byte" 
endif 


"�ص������ļ�
set nobackup

"��ʱû�ã����Ű�
hi CursorLine guibg=LightBlue

"������ǰ��
set cursorline

"��ʾ�к�
set number

let g:winManagerWindowLayout = 'FileExplorer,TagList|BufExplorer'
map <c-w><c-f> :FirstExplorerWindow<cr>
map <c-w><c-b> :BottomExplorerWindow<cr>
map <c-w><c-t> :WMToggle<cr>

""""""""""""""""""""""""""""""
" Tag list (ctags)
""""""""""""""""""""""""""""""
"if MySys() == "windows"                "�趨windowsϵͳ��ctags�����λ��
"set Tlist_Ctags_Cmd = 'ctags'
"elseif MySys() == "linux"              "�趨windowsϵͳ��ctags�����λ��
"let Tlist_Ctags_Cmd = '/usr/bin/ctags'
"endif
let g:Tlist_Show_One_File = 1            "��ͬʱ��ʾ����ļ���tag��ֻ��ʾ��ǰ�ļ���
let g:Tlist_Exit_OnlyWindow = 1          "���taglist���������һ�����ڣ����˳�vim
"let Tlist_Use_Right_Window = 1         "���Ҳര������ʾtaglist����

" Go language support for taglist
let tlist_go_settings = 'go;p:import;c:const;v:var;t:type;i:interface;s:struct;m:method;f:function'

colorscheme desert
syntax on
filetype on
filetype plugin on
filetype indent on

set smartindent  
set smarttab
set expandtab  
set tabstop=4  
set softtabstop=4  
set shiftwidth=4  
set backspace=2
"set textwidth=79
set autoindent
set autochdir
set clipboard=unnamed

let Tlist_JS_Settings = 'javascript;s:string;a:array;o:object;f:function'
"let Tlist_Ctags_Cmd = '/usr/local/bin/ctags'

set tags=./tags,tags,~/tags
