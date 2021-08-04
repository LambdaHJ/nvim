"==========================================
" global config
"==========================================
set guicursor=
set mouse=a
syntax on
let g:mapleader="\<Space>"

set clipboard+=unnamedplus

" auto save
set autowrite

set inccommand=split
set updatetime=1000

"==========================================
" UI view
"==========================================

set title
set number
set background=dark
" let g:solarized_termcolors=256
" colorscheme solarized

set termguicolors
let g:nord_italic = 1
let g:nord_italic_comments = 1
colorscheme nord

" let g:gruvbox_contrast_dark='hard'
" let g:gruvbox_italic=1
" colorscheme gruvbox

" colorscheme PaperColor


set cmdheight=1
set laststatus=2
set showtabline=2

" 相对行号: 行号变成相对，可以用 nj/nk 进行跳转
set relativenumber number
" au FocusLost * if ($filetype != 'floaterm') | :set norelativenumber number | endif
" au FocusGained * if ($filetype != 'floaterm') | :set relativenumber | endif
" 插入模式下用绝对行号, 普通模式下用相对
autocmd InsertEnter * if ($filetype != 'floaterm') | :set norelativenumber number | endif
" autocmd InsertLeave * if ($filetype != 'floaterm') | :set relativenumber | endif

" 突出显示当前列
set cursorcolumn
" 突出显示当前行
set cursorline

" 插入模式下不突出显示当前行列, 普通模式下突出显示当前行列
" autocmd InsertEnter * :set nocursorline nocursorcolumn
" autocmd InsertLeave * :set cursorline cursorcolumn

" 垂直分割在右边
set splitright

" 水平分割在下边
set splitbelow

set noshowmode
set noshowcmd
set noruler
set shortmess+=c
set shortmess+=F
set hidden
"==========================================
" backup && history
"==========================================
set nobackup
set nowritebackup

"==========================================
" search
"==========================================
" 使用 ripgrep 搜索
set grepprg=rg\ --smart-case\ --vimgrep

set smartcase
set ignorecase

set tagcase=smart

set showmatch
set hlsearch
set incsearch
set magic

"==========================================
" indent
"==========================================

set shiftwidth=4
set softtabstop=4
set tabstop=4

set autoindent
set smartindent

"==========================================
" move
"==========================================
set scrolloff=4
