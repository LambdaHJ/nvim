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

let g:dashboard_custom_footer = ['Keep It Simple, Stupid']
let g:dashboard_custom_header = [
    \'      _   _         ____  _ _                  ____        _ _      _    ',
    \'     | \ | | ___   / ___|(_) |_   _____ _ __  | __ ) _   _| | | ___| |_  ',
    \'     |  \| |/ _ \  \___ \| | \ \ / / _ \ |__| |  _ \| | | | | |/ _ \ __| ',
    \'     | |\  | (_) |  ___) | | |\ V /  __/ |    | |_) | |_| | | |  __/ |_  ',
    \'     |_| \_|\___/  |____/|_|_| \_/ \___|_|    |____/ \__,_|_|_|\___|\__| ',
    \'',
    \'',
    \]

let s:dashboard_shortcut={}
let s:dashboard_shortcut['find_history'] = 'SPC l r'
let s:dashboard_shortcut['find_file'] = 'SPC l f'
let s:dashboard_shortcut['find_word'] = 'SPC l g'
let g:dashboard_custom_section = {
    \ 'find_history'         :{'description':['ﭯ Recently opened files                 '.s:dashboard_shortcut['find_history']], 'command': ''},
    \ 'find_file'            :{'description':[' Find  File                            '.s:dashboard_shortcut['find_file']], 'command': ''},
    \ 'find_word'            :{'description':[' Find  word                            '.s:dashboard_shortcut['find_word']], 'command': ''},
    \ }

let g:vista_default_executive = 'coc'
let g:vista#renderer#enable_icon = 1


nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)
