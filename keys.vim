"==========================================
" vim which key Settings  初始化
"==========================================
let g:which_key_map =  {}
call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================

" 选择window
nnoremap <Leader>1 :1 wincmd w<CR>
nnoremap <Leader>2 :2 wincmd w<CR>
nnoremap <Leader>3 :3 wincmd w<CR>
nnoremap <Leader>4 :4 wincmd w<CR>

" 分屏窗口移动, Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" 去掉搜索高亮
noremap <silent><leader>/ :nohls<CR>

" 缩进
nnoremap <tab> >>
nnoremap <s-tab> <<

xnoremap <tab> <gv
xnoremap <s-tab> >gv

" 调整缩进后自动选中，方便再次操作
vnoremap < <gv
vnoremap > >gv

" resize
nnoremap + <c-w>5>
nnoremap _ <c-w>5<


" 滚动Speed up scrolling of the viewport slightly
nnoremap <C-e> 2<C-e>
nnoremap <C-y> 2<C-y>


let g:coc_snippet_next = '<tab>'
let g:coc_snippet_prev = '<S-TAB>'

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if has('patch8.1.1068')
  " Use `complete_info` if your (Neo)Vim version supports it.
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction


" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


let which_key_map.g =  {
            \'name': '+goto',
            \'gd': 'definition',
            \'gy': 'type definition',
            \'gi': 'implementation',
            \'gr': 'references',
            \}
" GoTo code navigation.
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

let which_key_map.l = {
            \'name': '+list',
            \'f': 'find files',
            \'o': 'outline',
            \'g': 'grep project',
            \'w': 'word in current buffer',
            \}
" Find symbol of current document.
nnoremap <silent> <leader>lo  :<C-u>CocList outline<cr>
" Find fils of current project.
nnoremap <silent> <leader>lf  :<C-u>CocList files<cr>

" Search workspace.
nnoremap <silent> <leader>lg  :<C-u>CocList grep<CR>
" Search current word in current buffer
nnoremap <silent> <leader>lw  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>

" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

" Keymapping for grep word under cursor with interactive mode
nnoremap <silent> <Leader>cf :exe 'CocList -I --input='.expand('<cword>').' grep'<CR>

let which_key_map.c = {
            \'name': "+code",
            \'n': 'rename',
            \'f': 'format',
            \'r': 'refactor',
            \}
" Symbol renaming.
nmap <leader>cn <Plug>(coc-rename)

" Formatting selected code.
xmap <leader>cf  <Plug>(coc-format)

nmap <leader>cr <Plug>(coc-refactor)
" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

let which_key_map.n = 'explorer'
nnoremap <silent> <leader>n :CocCommand explorer<CR>

