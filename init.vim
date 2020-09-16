if &compatible
  set nocompatible
endif

packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

" snippets
call minpac#add('honza/vim-snippets')


call minpac#add('liuchengxu/vim-which-key')

" devicons icon
call minpac#add('ryanoasis/vim-devicons')

" statusline
call minpac#add('itchyny/lightline.vim')

" start view
call minpac#add('hardcoreplayers/dashboard-nvim')

" git
call minpac#add('tpope/vim-fugitive')

call minpac#add('tpope/vim-commentary')

call minpac#add('itchyny/vim-cursorword')

call minpac#add('Lokaltog/vim-easymotion')

call minpac#add('junegunn/vim-easy-align')

call minpac#add('voldikss/vim-floaterm')

call minpac#add('haya14busa/incsearch.vim')

call minpac#add('Yggdroot/indentLine')

call minpac#add('yianwillis/vimcdoc')

" colorscheme
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('kaicataldo/material.vim')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('NLKNguyen/papercolor-theme')

" task
call minpac#add('skywind3000/asynctasks.vim')
call minpac#add('skywind3000/asyncrun.vim')


command! PackUpdate call minpac#update()
command! PackStatus call minpac#status()
command! PackClean  call minpac#clean()

let loaded_netrwPlugin = 1

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
