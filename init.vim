call plug#begin(stdpath('data') . '/plugged')
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " snippets
    Plug 'honza/vim-snippets'


    Plug 'liuchengxu/vim-which-key'

    " devicons icon
    Plug 'ryanoasis/vim-devicons'

    " statusline
    Plug 'itchyny/lightline.vim'

    " start view
    Plug 'hardcoreplayers/dashboard-nvim'

    " git
    Plug 'airblade/vim-gitgutter'

    Plug 'scrooloose/nerdcommenter'

    Plug 'itchyny/vim-cursorword'

	Plug 'Lokaltog/vim-easymotion'

    " colorscheme
    Plug 'arcticicestudio/nord-vim'
    Plug 'kaicataldo/material.vim'
    Plug 'altercation/vim-colors-solarized'
	Plug 'srcery-colors/srcery-vim'
call plug#end()

if filereadable(expand("~/.config/nvim/basic.vim"))
    source ~/.config/nvim/basic.vim
endif

if filereadable(expand("~/.config/nvim/cmd.vim"))
    source ~/.config/nvim/cmd.vim
endif

if filereadable(expand("~/.config/nvim/lightline.vim"))
    source ~/.config/nvim/lightline.vim
endif

if filereadable(expand("~/.config/nvim/coc.vim"))
    source ~/.config/nvim/coc.vim
endif

if filereadable(expand("~/.config/nvim/keys.vim"))
    source ~/.config/nvim/keys.vim
endif

if filereadable(expand("~/.config/nvim/others.vim"))
    source ~/.config/nvim/others.vim
endif

