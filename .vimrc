syntax on " 打开语法高亮
filetype indent on " 开启文件类型检查，并且载入与该类型对应的缩进规则

set ruler " 在状态栏显示光标的当前位置
set number " 显示行号
set nocompatible " 不与 Vi 兼容（采用 Vim 自己的操作命令）
set encoding=utf-8 " 使用 utf-8 编码
set showmode " 在底部显示，当前处于命令模式还是插入模式
set showcmd " 命令模式下，在底部显示，当前键入的指令
set t_Co=256 " 启用256色
" set autoindent " 按下回车键后，下一行的缩进会自动跟上一行的缩进保持一致
set scrolloff=5 " 垂直滚动时，光标距离顶部/底部的位置
" set wrap " 自动折行
" set textwidth=80 " 设置行宽
set formatoptions=tcqrn1
set tabstop=4 " 按下 Tab 键时，Vim 显示的空格数
set shiftwidth=4 " 在文本上按下>>时，每一级的字符数
set softtabstop=4 " Tab 转为多少个空格
set expandtab " 自动将 Tab 转为空格
" set noshiftround " 粘贴indent
set ttyfast
set laststatus=2 " 是否显示状态栏
set hlsearch " 搜索时，高亮显示匹配结果
set incsearch " 输入搜索模式时，每输入一个字符，就自动跳到第一个匹配的结果
set ignorecase " 搜索时忽略大小写
set smartcase " 那么对于只有一个大写字母的搜索词，将大小写敏感；其他情况都是大小写不敏感
set showmatch " 光标遇到圆括号自动高亮
" set visualbell " 出错时，发出视觉提示，通常是屏幕闪烁

set listchars=tab:»■,trail:■ " continue
set list " 如果行尾有多余的空格（包括 Tab 键），该配置将让这些空格显示成可见的小方块

set wildmenu
set wildmode=list:longest,full

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }

" Initialize plugin system
call plug#end()                   

