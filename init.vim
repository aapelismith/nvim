" 基础设置
syntax on                   "开启语法高亮
set backspace=2
set nocompatible            " be iMproved, required
filetype on                 " required
set nu
set history=1000            "记录历史的行数
set autoindent              "vim使用自动对齐，也就是把当前行的对齐格式应用到下一行(自动缩进）
set cindent                 "（cindent是特别针对 C语言语法自动缩进）
set smartindent             "依据上面的对齐格式，智能的选择对齐方式，对于类似C语言编写上有用
set tabstop=4               "设置tab键为4个空格，
set shiftwidth =4           "设置当行之间交错时使用4个空格
set ai!                     " 设置自动缩进
set showmatch               "设置匹配模式，类似当输入一个左括号时会匹配相应的右括号
set ruler                   "在编辑过程中，在右下角显示光标位置的状态行
set nohls                   "默认情况下，寻找匹配是高亮度显示，该设置关闭高亮显示
set showcmd                     " 输入的命令显示出来，看的清楚些
set incsearch               "在程序中查询一单词，自动匹配单词的位置；如查询desk单词，当输到/d时，会自动找到第一个d开头的单词，当输入到/de时，会自动找到第一个以ds开头的单词，以此类推，进行查找；当找到要匹配的单词时，别忘记回车
set scrolloff=3     " 光标移动到buffer的顶部和底部时保持3行距离
set cul "高亮光标所在行
set cuc
set shortmess=atI   " 启动的时候不显示那个援助乌干达儿童的提示
set go=             " 不要图形按钮 针对macvim
color desert     " 设置背景主题
"set laststatus=1   " 启动显示状态行(1),总是显示状态行(2)
" 自动缩进
set autoindent
set cindent
" Tab键的宽度
set tabstop=4
" 统一缩进为4
set softtabstop=4

set shiftwidth=4
" 使用空格代替制表符
set expandtab
" 在行和段开始处使用制表符
set smarttab
" 历史记录数
set history=1000
"搜索逐字符高亮
set hlsearch
set incsearch
"语言设置
set langmenu=en_us.UTF-8
set helplang=en

" 总是显示状态行
set cmdheight=2
" 载入文件类型插件
filetype plugin on
" 为特定文件类型载入相关缩进文件
filetype indent on
" 保存全局变量
set viminfo+=!

" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

"访问系统剪切板
set clipboard=unnamed

set nocompatible              " be iMproved, required

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')
" On-demand loading
Plug 'vim-scripts/L9'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'w0rp/ale'
Plug 'Valloric/YouCompleteMe'
Plug 'jnurmine/Zenburn'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'kien/ctrlp.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'tell-k/vim-autopep8'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'fatih/vim-go'
Plug 'vim-scripts/darktango.vim'
Plug 'majutsushi/tagbar'
Plug 'yonchu/accelerated-smooth-scroll'
Plug 'uguu-org/vim-matrix-screensaver'
Plug 'mileszs/ack.vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'liuchengxu/space-vim-dark'
Plug 'ianva/vim-youdao-translater'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'jlanzarotta/bufexplorer'
Plug 'vim-scripts/FuzzyFinder'
Plug 'vim-scripts/dbext.vim'
Plug 'vim-scripts/sqlutilities'
Plug 'tpope/vim-obsession'
call plug#end()

filetype plugin indent on    " required

"YouCompleteMe 配置
let g:ycm_global_ycm_extra_conf='~/.config/nvim/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_autoclose_preview_window_after_completion=1
let g:ycm_python_binary_path = 'python3'
let g:go_fmt_command = "goimports"

let g:autopep8_disable_show_diff=1  "autopep8设置
"let g:mapleader=","
"let g:nerdtree_tabs_open_on_console_startup=1   "vim在终端启动时自动显示 nerdtree
let g:NERDTreeChDirMode=1
let g:NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let g:NERDTreeShowBookmarks=1
let g:NERDTreeWinSize=25
let NERDTreeWinPos="right"  "在左侧显示 窗口
"   set completeopt=longest,menu	"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"   autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"   inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

"主题设置
set background=dark
colorscheme space-vim-dark
let g:airline_theme='violet'


"缩进指示线"
let g:indentLine_char='┆'
let g:indentLine_enabled = 1

function OpenTerminal()
 " open split windows on the topleft
 botright split
 " resize the height of terminal windows to 30
 resize 10
 :terminal  
endf

set fdm=indent
" 设置代码折叠的深度
set foldnestmax=0

let g:ycm_key_list_select_completion = ['<c-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<c-p>', '<Up>']


let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

command Fold set foldnestmax=1
command Nofold set foldnestmax=0
set maxmempattern=1048576
"按键绑定
"F3开启和关闭树
map <F3> :NERDTreeToggle<CR>
map <F4> :call OpenTerminal()<CR>
nmap <F8> :TagbarToggle<CR>  
 "打开终端
nnoremap ff :FufFile<CR> 
nnoremap fb :FufBuffer<CR> 
nnoremap ft :FufTag<CR>
nnoremap tb :TagbarToggle<CR>
nnoremap nt :NERDTreeToggle<CR>
nnoremap te :call OpenTerminal()<CR>
nnoremap tr :Ydc <CR>

function LocationListNavOrJustOne(cmd)
    redir => output
    silent! exec a:cmd
    redir END
    if match(output, "E553: No more items") >= 0
        exec ':ll'
    else
        echom output
    endif
endfunction

nmap ,, :call LocationListNavOrJustOne(":lprev")<CR>
nmap .. :call LocationListNavOrJustOne(":lnext")<CR>
