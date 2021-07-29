"==========================================
" other plugin Settings
"==========================================

" disable netw
let loaded_netrwPlugin = 1

" floaterm
let g:floaterm_position = 'center'
let g:floaterm_title = "Terminal"

" asynctask
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', 'go.mod']


" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['coc-explorer','list', 'dashboard', 'vista']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel = 1


let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1


nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" press <esc> to cancel.
nmap f <Plug>(coc-smartf-forward)
nmap F <Plug>(coc-smartf-backward)
nmap ; <Plug>(coc-smartf-repeat)
nmap , <Plug>(coc-smartf-repeat-opposite)

augroup Smartf
  autocmd User SmartfEnter :hi Conceal ctermfg=220 guifg=#6638F0
  autocmd User SmartfLeave :hi Conceal ctermfg=239 guifg=#504945
augroup end

