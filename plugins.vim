" File: plugins.vim
" Author: heikkihuang
" Description: load plugin config.
" Last Modified: 七月 27, 2021


" lightline ------------------------- {{{
if filereadable(expand("~/.config/nvim/plugins/lightline.vim"))
    source ~/.config/nvim/plugins/lightline.vim
endif
" }}}


" dashboard ------------------------- {{{
if filereadable(expand("~/.config/nvim/plugins/dashboard.vim"))
    source ~/.config/nvim/plugins/dashboard.vim
endif
" }}}

" coc ------------------------- {{{
if filereadable(expand("~/.config/nvim/plugins/coc.vim"))
    source ~/.config/nvim/plugins/coc.vim
endif
" }}}



if filereadable(expand("~/.config/nvim/plugins/others.vim"))
	source ~/.config/nvim/plugins/others.vim
endif
