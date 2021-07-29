" File: dashboard.vim
" Author: heikkihuang
" Description: dashboard.nvim config.
" Last Modified: 七月 27, 2021

let g:dashboard_custom_footer = ['Keep It Simple, Stupid']
let g:dashboard_custom_header = [
            \'',
            \'',
            \'  ███╗   ██╗ ██████╗     ███████╗██╗██╗    ██╗   ██╗███████╗██████╗     ██████╗ ██╗   ██╗██╗     ██╗     ███████╗████████╗',
            \'  ████╗  ██║██╔═══██╗    ██╔════╝██║██║    ██║   ██║██╔════╝██╔══██╗    ██╔══██╗██║   ██║██║     ██║     ██╔════╝╚══██╔══╝',
            \'  ██╔██╗ ██║██║   ██║    ███████╗██║██║    ██║   ██║█████╗  ██████╔╝    ██████╔╝██║   ██║██║     ██║     █████╗     ██║   ',
            \'  ██║╚██╗██║██║   ██║    ╚════██║██║██║    ╚██╗ ██╔╝██╔══╝  ██╔══██╗    ██╔══██╗██║   ██║██║     ██║     ██╔══╝     ██║   ',
            \'  ██║ ╚████║╚██████╔╝    ███████║██║███████╗╚████╔╝ ███████╗██║  ██║    ██████╔╝╚██████╔╝███████╗███████╗███████╗   ██║   ',
            \'  ╚═╝  ╚═══╝ ╚═════╝     ╚══════╝╚═╝╚══════╝ ╚═══╝  ╚══════╝╚═╝  ╚═╝    ╚═════╝  ╚═════╝ ╚══════╝╚══════╝╚══════╝   ╚═╝   ',
      \ ]

let s:dashboard_shortcut={}
let s:dashboard_shortcut['find_history'] = 'SPC f r'
let s:dashboard_shortcut['find_file'] = 'SPC f f'
let s:dashboard_shortcut['find_word'] = 'SPC f g'
let g:dashboard_custom_section = {
    \ 'find_history'         :{'description':['ﭯ Recently opened files                 '.s:dashboard_shortcut['find_history']], 'command': ''},
    \ 'find_file'            :{'description':[' Find  File                            '.s:dashboard_shortcut['find_file']], 'command': ''},
    \ 'find_word'            :{'description':[' Find  word                            '.s:dashboard_shortcut['find_word']], 'command': ''},
    \ }
