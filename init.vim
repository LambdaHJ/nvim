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
call minpac#add('mengelbrecht/lightline-bufferline')

call minpac#add('itchyny/vim-gitbranch')

" start view
call minpac#add('hardcoreplayers/dashboard-nvim')

call minpac#add('tpope/vim-commentary')

call minpac#add('itchyny/vim-cursorword')

call minpac#add('tpope/vim-surround')

call minpac#add('Lokaltog/vim-easymotion')

call minpac#add('junegunn/vim-easy-align')

call minpac#add('voldikss/vim-floaterm')

" markdown preview
call minpac#add('iamcco/markdown-preview.nvim', {'do': 'packloadall! | call mkdp#util#install()'})

call minpac#add('Yggdroot/indentLine')

call minpac#add('yianwillis/vimcdoc')

call minpac#add('skywind3000/asyncrun.vim')

" colorscheme
call minpac#add('arcticicestudio/nord-vim')
call minpac#add('kaicataldo/material.vim')
call minpac#add('altercation/vim-colors-solarized')
call minpac#add('NLKNguyen/papercolor-theme')
call minpac#add('morhetz/gruvbox')

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

" load experiment feature
if filereadable(expand("~/.config/nvim/experiment.vim"))
    source ~/.config/nvim/experiment.vim
endif

if filereadable(expand("~/.config/nvim/functions.vim"))
    source ~/.config/nvim/functions.vim
endif
