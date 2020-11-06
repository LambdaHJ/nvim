if &compatible
  set nocompatible
endif

function! PackagerInit() abort
	packadd vim-packager
	call packager#init()
	call packager#add('kristijanhusak/vim-packager', { 'type': 'opt' })

	call packager#add('neoclide/coc.nvim', {'branch': 'release'})

	" snippets
	call packager#add('honza/vim-snippets')


	call packager#add('liuchengxu/vim-which-key')

	" devicons icon
	call packager#add('ryanoasis/vim-devicons')

	" statusline
	call packager#add('itchyny/lightline.vim')
	call packager#add('mengelbrecht/lightline-bufferline')
	" call packager#add('lambdalisue/battery.vim')

	call packager#add('tpope/vim-fugitive')

	" start view
	call packager#add('hardcoreplayers/dashboard-nvim')

	call packager#add('tpope/vim-commentary')

	call packager#add('itchyny/vim-cursorword')

	call packager#add('tpope/vim-surround')

	call packager#add('Lokaltog/vim-easymotion')

	call packager#add('junegunn/vim-easy-align')

	call packager#add('voldikss/vim-floaterm')

	" markdown preview
	call packager#add('iamcco/markdown-preview.nvim', {'do': 'packloadall! | call mkdp#util#install()'})

	call packager#add('Yggdroot/indentLine')

	call packager#add('yianwillis/vimcdoc')

	call packager#add('skywind3000/asyncrun.vim')

	" colorscheme
	call packager#add('arcticicestudio/nord-vim')
	call packager#add('kaicataldo/material.vim')
	call packager#add('altercation/vim-colors-solarized')
	call packager#add('NLKNguyen/papercolor-theme')
	call packager#add('morhetz/gruvbox')

	" task
	call packager#add('skywind3000/asynctasks.vim')
	call packager#add('skywind3000/asyncrun.vim')
endfunction


command! PackInstall call PackagerInit() | call packager#install()
command! PackUpdate call PackagerInit() | call packager#update()
command! PackStatus call PackagerInit() | call packager#status()
command! PackClean  call PackagerInit() | call packager#clean()


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
