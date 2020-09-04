"==========================================
" other plugin Settings
"==========================================
" nerdcomment
let g:NERDSpaceDelims=1
let g:NERDAltDelims_python = 1

" floaterm
let g:floaterm_position = 'center'
let g:floaterm_wintype = 'floating'
" hi FloatermBorder ctermbg=Black


" indentLine
let g:indentLine_enabled = 1
let g:indentLine_char='┆'
let g:indentLine_fileTypeExclude = ['coc-explorer', 'list','startify','tagbar']
let g:indentLine_concealcursor = 'niv'
let g:indentLine_showFirstIndentLevel =1
let g:dashboard_custom_header = [
    \'      _   _         ____  _ _                  ____        _ _      _    ',
    \'     | \ | | ___   / ___|(_) |_   _____ _ __  | __ ) _   _| | | ___| |_  ',
    \'     |  \| |/ _ \  \___ \| | \ \ / / _ \ |__| |  _ \| | | | | |/ _ \ __| ',
    \'     | |\  | (_) |  ___) | | |\ V /  __/ |    | |_) | |_| | | |  __/ |_  ',
    \'     |_| \_|\___/  |____/|_|_| \_/ \___|_|    |____/ \__,_|_|_|\___|\__| ',
    \'',
    \'                         Keep It Simple, Stupid                          ',
    \'',
    \]

let s:dashboard_shortcut={}
let s:dashboard_shortcut['recently_project'] = 'SPC l p'
let s:dashboard_shortcut['find_history'] = 'SPC l r'
let s:dashboard_shortcut['find_file'] = 'SPC l f'
let s:dashboard_shortcut['find_word'] = 'SPC l g'
let s:dashboard_shortcut['book_marks'] = 'SPC l m'
let g:dashboard_custom_section = {
    \ 'recently_project'     :[' Recently opened project               '.s:dashboard_shortcut['recently_project']],
    \ 'find_history'         :['ﭯ Recently opened files                 '.s:dashboard_shortcut['find_history']],
    \ 'find_file'            :[' Find  File                            '.s:dashboard_shortcut['find_file']],
    \ 'find_word'            :[' Find  word                            '.s:dashboard_shortcut['find_word']],
    \ 'book_marks'           :[' Jump to book marks                    '.s:dashboard_shortcut['book_marks']],
    \ }

