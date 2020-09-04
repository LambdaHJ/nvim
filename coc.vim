"==========================================
" coc Settings coc.vim基础设置
"==========================================

" coc 扩展
let g:coc_global_extensions =[
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-json',
    \ 'coc-git',
    \ 'coc-emoji',
    \ 'coc-project',
    \ 'coc-python',
	\ 'coc-rls',
    \ 'coc-clangd',
    \ 'coc-lists',
    \ 'coc-yaml',
    \ 'coc-gitignore',
    \ 'coc-explorer',
    \ 'coc-bookmark',
    \]

" coc 错误信息显示
let g:coc_status_error_sign = '✗'
let g:coc_status_warning_sign = '⚠︎'

" 使用 <tab> 触发补全
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

" 使用 <CR> 确认补全，并触发 coc.nvim 的 formatOnType 功能
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
