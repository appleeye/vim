 "          Author: liuxiao 
 "           Email: appleeue.zju#gmail.com
 "        Homepage: 
 "         Created: 2015-07-28
 "===============================================================================
 set encoding=utf-8
" set guifont=Luxi/ Mono/ 9   " 设置字体，字体名称和字号
 set tabstop=4       " 设置tab键的宽度
 set backspace=2     " 设置退格键可用
 set nu!             " 显示行号
 "set vbt_vb=        " vim进行编辑时，如果命令错误，会发出一个响声，该设置去掉响声
 "set wrap           " 自动换行
 "set nowrap         " 不自动换行
 se linebreak       " 整词换行
 set whichwrap=b,s,<,>,[,]       " 光标从行首和行末时可以跳到另一行去
 "set list                       " 显示制表符
 "set listchars = tab:>-,trail:- " 将制表符显示为'>---',将行尾空格显示为'-'
 "set listchars=tab:./ ,trail:.   " 将制表符显示为'.   '
 set autochdir                   " 自动设置目录为正在编辑的文件所在的目录
 set hidden          " 没有保存的缓冲区可以自动被隐藏
 set scrolloff=5
 set cursorline
 syntax on
 let python_highlight_all=1
 "set background=dark
"--------------------------------------------------------------------------------
" 查找/替换相关的设置
"--------------------------------------------------------------------------------
set hlsearch        " 高亮显示搜索结果
set incsearch       " 查询时非常方便，如要查找book单词，当输入到/b时，会自动找到
" 第一个b开头的单词，当输入到/bo时，会自动找到第一个bo开头的
" 单词，依次类推，进行查找时，使用此设置会快速找到答案，当你
" 找要匹配的单词时，别忘记回车
set gdefault        " 替换时所有的行内匹配都被替换，而不是只有第一个


" 修改leader键
"
"let mapleader = ','
"let g:mapleader = ','
"--------------------------------------------------------------------------------
" 状态栏相关的设置
"--------------------------------------------------------------------------------
set statusline=[%F]%y%r%m%*%=[Line:%l/%L,Column:%c][%p%%]
set laststatus=2    " always show the status line
set ruler           " 在编辑过程中，在右下角显示光标位置的状态行

"--------------------------------------------------------------------------------
" 编程相关的设置
"--------------------------------------------------------------------------------
" set completeopt=longest,menu    " 关掉智能补全时的预览窗口"
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()


Bundle 'gmarik/vundle.vim'
Bundle 'Python-mode-klen'
Bundle 'tpope/vim-fugitive'
Bundle 'Raimondi/delimitMate'
Bundle 'Valloric/YouCompleteMe'
Bundle 'rizzatti/dash.vim'

"add snippets
Bundle 'honza/vim-snippets'
Bundle 'SirVer/ultisnips'
"add surround
Bundle 'tpope/vim-surround'
". can repeat last command
Bundle 'tpope/vim-repeat'
Bundle 'easymotion/vim-easymotion' 
Bundle 'terryma/vim-expand-region'
" add ide function
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'vim-scripts/TaskList.vim'
Bundle 'majutsushi/tagbar' 
Bundle 'dkprice/vim-easygrep'
Bundle 'thinca/vim-quickrun'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'kien/ctrlp.vim'
Bundle 'altercation/vim-colors-solarized.git'
Bundle 'vim-scripts/vim-auto-save'
" add tmux support
Bundle 'christoomey/vim-tmux-navigator'
Bundle 'scrooloose/syntastic'
Bundle 'craigemery/vim-autotag'
Bundle 'airblade/vim-rooter'

Bundle 'vim-airline/vim-airline'
Bundle 'vim-airline/vim-airline-themes'


call vundle#end()
filetype plugin indent on       " 加了这句才可以用智能补全

let mapleader = "\<Space>"


"vim-expand-region setting
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" python mode setting
map <Leader>g:call RopeGotoDefinition()<CR>     
let ropevim_enable_shortcuts = 1                                                   
let g:pymode_rope_goto_def_newwin = "vnew"                                         
let g:pymode_rope_extended_complete = 1                                            
let g:pymode_breakpoint = 0                                                        
let g:pymode_syntax = 1                                                            
let g:pymode_rope_autoimport = 1
let g:pymode_syntax_builtin_objs = 0                                               
let g:pymode_syntax_builtin_funcs = 0                                              
let g:pymode_rope_lookup_project = 0
" code checking
let g:pymode_lint_on_write = 1
let g:pymode_lint = 1
" refactor setting
let g:pymode_rope_rename_bind = '<C-c>rr'   "refacor
let g:pymode_rope_organize_imports_bind = '<C-c>ro' "orgnize imports
let g:pymode_rope_autoimport_bind = '<C-c>ra'  "import cursor
map <Leader>b Oimport ipdb; ipdb.set_trace()#BREAKPOINT <C-c>



"Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"autocmd FileType python set omnifunc=pythoncomplete#Complete
"let g:pydiction_location='~/.vim/tools/pydiction/complete-dict'  
"set tags=/home/nfs/microwindows/src/tags
syn on              " 打开语法高亮
set showmatch       " 设置匹配模式，类似当输入一个左括号时会匹配相应的那个右括号
set smartindent     " 智能对齐方式
set shiftwidth=4    " 换行时行间交错使用4个空格
set autoindent      " 自动对齐
set ai!             " 设置自动缩进
"colorscheme desert_wuyin
"--------------------------------------------------------------------------------
" 代码折叠
"--------------------------------------------------------------------------------
"set foldmarker={,}
"set foldmethod=marker
set foldmethod=syntax
set foldlevel=100       " Don't autofold anything (but I can still fold manually)
"set foldopen-=search   " don't open folds when you search into them
"set foldopen-=undo     " don't open folds when you undo stuff
"set foldcolumn=4
"--------------------------------------------------------------------------------
" 模仿MS Windows中的快捷键
"--------------------------------------------------------------------------------
vmap <C-c> "yy
vmap <C-x> "yd
nmap <C-v> "yp
vmap <C-v> "yp
nmap <C-a> ggvG$

"--------------------------------------------------------------------------------
" 窗口操作的快捷键
"--------------------------------------------------------------------------------
nmap wv     <C-w>v     " 垂直分割当前窗口
nmap wc     <C-w>c     " 关闭当前窗口
nmap ws     <C-w>s     " 水平分割当前窗口
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h


nnoremap  k gk
nnoremap  gk k
nnoremap  j  gj
nnoremap  gj j

nnoremap ; :
"--------------------------------------------------------------------------------
" 模仿MS Windows中的保存命令: Ctrl+S
"--------------------------------------------------------------------------------
imap <C-s> <Esc>:wa<cr>i<Right>
nmap <C-s> :wa<cr>

"TaskList map setting
map <leader>t <Plug>TaskList

"--------------------------------------------------------------------------------
" EasyGrep
"--------------------------------------------------------------------------------
"直接按下<F3>键来查找光标所在的字符串
let g:EasyGrepCommand = 1 
let g:EasyGrepMode = 2       " All:0, Open Buffers:1, TrackExt:2 # 1表示在已打开的buff中搜索, 2表示在当前文件相同扩展名的文件中搜索
let g:EasyGrepRecursive  = 1 " Recursive searching 递归搜索
"let g:EasyGrepRoot = 'cwd'   " 设置搜索根路径, cwd:current dir
let g:EasyGrepIgnoreCase = 1 " Not ignore:0, ignore:1 大小写敏感
let g:EasyGrepFilesToExclude = "tags"
let g:EasyGrepRoot = "search:.git" "设置搜索根路径为git/svn repos的根路径


"access mac system clipboard
"set clipboard=unamed

"--------------------------------------------------------------------------------
" Dash.vim
"--------------------------------------------------------------------------------
nmap <silent> <leader>d <Plug>DashSearch
nmap <silent> <leader>g <Plug>DashGlobalSearch 

let g:dash_activate = 1
"--------------------------------------------------------------------------------
"NERD_TREE
"--------------------------------------------------------------------------------"
"
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree"

nmap <F7> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>
nmap <F4> :set number!<CR>

"--------------------------------------------------------------------------------
"AUTO_SAVE
"--------------------------------------------------------------------------------"
let g:auto_save = 0  " enable AutoSave on Vim startup
let g:auto_save_no_updatetime = 1  " do not change the 'updatetime' option
let g:auto_save_in_insert_mode = 0  " do not save while in insert mode



"--------------------------------------------------------------------------------
" Ctags
"--------------------------------------------------------------------------------
set tags=./tags;
"let g:easytags_dynamic_files = 0
nmap <F12> :!ctags -R --fields=+l --languages=python --python-kinds=-iv -f /.tags ./<CR>  

"--------------------------------------------------------------------------------
" NERD_commenter
"--------------------------------------------------------------------------------
"let NERD_c_alt_style = 1    " 将C语言的注释符号改为//, 默认是/**/
"nmap <F5> ,cc

"--------------------------------------------------------------------------------
"let g:SuperTabRetainCompletionType = 2
"let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

"--------------------------------------------------------------------------------
" CVim :help csupport
"--------------------------------------------------------------------------------
"let g:C_BraceOnNewLine = "no"   " '{'是否独自一行
autocmd BufNewFile *.py,*.cc,*.sh,*.java exec ":call SetFileTitle()"  
"新建.py,.cc,.java,.sh,  
"定义函数SetTitle，自动插入文件头  
func SetFileTitle()  
     if expand("%:e") == 'sh'
            call setline(1, "#!/bin/sh")   
            call setline(2, "#/ *===============================================================")  
            call setline(3, "#\ @Author: liuxiao")  
            call setline(4, "#\ @Created Time : ".strftime("%c"))  
            call setline(5, "#")   
            call setline(6, "#\ @File Name: ".expand("%"))  
            call setline(7, "#\ @Description:")  
            call setline(8, "#")   
            call setline(9, "#================================================================*/")  
            call setline(10,"#")  
    endif  

    if expand("%:e") =='py'                                                                                                                                                                  
           call setline(1, "#!/usr/bin/env python")
           call setline(2, "# -*- coding:utf-8 -*- ")
           call setline(3, "#\ @Author: liuxiao")  
           call setline(4, "#\ @Created Time : ".strftime("%c"))
           call setline(5, "#")   
           call setline(6, "#\ @File Name: ".expand("%"))
           call setline(7, "#\ @Description:")  
           call setline(8, "#")   
           call setline(9, "# ================================================================*/")
           call setline(10,"#")  
    endif            

endfunc

"##################################################################
"########################## End Of Vimrc ##########################
"##################################################################

" if filetype is C
"   T
"
"fi
