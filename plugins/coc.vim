" File: coc.vim
" Author: heikkihuang
" Description: coc config 
" Last Modified: 八月 31, 2021

"==========================================
" coc Settings coc.vim基础设置
"==========================================

" coc 扩展
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-pairs',
    \ 'coc-json',
    \ 'coc-git',
    \ 'coc-emoji',
    \ 'coc-pyright',
    \ 'coc-rls',
    \ 'coc-clangd',
    \ 'coc-tsserver',
    \ 'coc-vimlsp',
    \ 'coc-lists',
    \ 'coc-yaml',
    \ 'coc-tasks',
    \ 'coc-go',
    \ 'coc-gitignore',
    \ 'coc-explorer',
    \ 'coc-marketplace',
    \ 'coc-actions',
    \ 'coc-docker',
    \ 'coc-highlight',
    \ 'coc-word',
    \ 'coc-smartf'
    \]

" coc 错误信息显示
let g:coc_status_error_sign = '✗'
let g:coc_status_warning_sign = '⚠︎'

" 使用 <CR> 确认补全，并触发 coc.nvim 的 formatOnType 功能
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:table_comp() abort
  echom "pumvisible"
  if pumvisible()
    return "\<C-n>"
  endif
  echom "jump"
  if coc#jumpable()
    return "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>"
  endif
  if <SID>check_back_space()
    return "\<TAB>"
  endif
  return coc#refresh()
endfunction

inoremap <silent><expr> <TAB> <SID>table_comp()

let g:coc_snippet_next = '<SID>table_comp()'


inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
