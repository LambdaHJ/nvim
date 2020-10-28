"==========================================
" other plugin Settings
"==========================================

" disable netw
let loaded_netrwPlugin = 1

" nerdcomment
let g:NERDSpaceDelims=1
let g:NERDAltDelims_python = 1

" floaterm
let g:floaterm_position = 'center'
let g:floaterm_title = "Terminal"

" asynctask
let g:asyncrun_open = 6
let g:asyncrun_rootmarks = ['.git', '.svn', '.root', 'go.mod']


" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['coc-explorer','list', 'dashboard']
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

" let g:dashboard_custom_footer="Keep It Simple, Stupid."

let s:dashboard_shortcut={}
let s:dashboard_shortcut['recently_project'] = 'SPC l p'
let s:dashboard_shortcut['find_history'] = 'SPC l r'
let s:dashboard_shortcut['find_file'] = 'SPC l f'
let s:dashboard_shortcut['find_word'] = 'SPC l g'
let s:dashboard_shortcut['book_marks'] = 'SPC l m'
let g:dashboard_custom_section = {
    \ 'recently_project'     :{'description':[' Recently opened project               '.s:dashboard_shortcut['recently_project']], 'command': ''},
    \ 'find_history'         :{'description':['ﭯ Recently opened files                 '.s:dashboard_shortcut['find_history']], 'command': ''},
    \ 'find_file'            :{'description':[' Find  File                            '.s:dashboard_shortcut['find_file']], 'command': ''},
    \ 'find_word'            :{'description':[' Find  word                            '.s:dashboard_shortcut['find_word']], 'command': ''},
    \ 'book_marks'           :{'description':[' Jump to book marks                    '.s:dashboard_shortcut['book_marks']], 'command': ''},
    \ }


let g:mkdp_auto_start = 1
