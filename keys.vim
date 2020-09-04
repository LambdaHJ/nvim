"==========================================
" vim which key Settings  初始化
"==========================================
let g:which_key_map =  {}
call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

"==========================================
" Cmd Settings  自定义命令设置
"==========================================

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

"==========================================
" HotKey Settings  自定义快捷键设置
"==========================================

" 选择window
" nnoremap <Leader>1 :1 wincmd w<CR>
" nnoremap <Leader>2 :2 wincmd w<CR>
" nnoremap <Leader>3 :3 wincmd w<CR>
" nnoremap <Leader>4 :4 wincmd w<CR>

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


" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



" goto command
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
			\'p': 'project',
			\'m': 'bookmark',
			\'r': 'rencent',
            \}
" Find symbol of current document.
nnoremap <silent> <leader>lo  :<C-u>CocList --auto-preview outline<cr>
" Find fils of current project.
nnoremap <silent> <leader>lf  :<C-u>CocList files<cr>
" Search workspace.
nnoremap <silent> <leader>lg  :<C-u>CocList grep<CR>
" Search current word in current buffer
nnoremap <silent> <leader>lw  :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
nnoremap <silent> <leader>lm  :<C-u>CocList bookmark<CR>
" Search project
nnoremap <silent> <leader>lp  :<C-u>CocList project<CR>
nnoremap <silent> <leader>lr  :<C-u>CocList mru<CR>

" grep word under cursor
command! -nargs=+ -complete=custom,s:GrepArgs Rg exe 'CocList grep '.<q-args>

function! s:GrepArgs(...)
  let list = ['-S', '-smartcase', '-i', '-ignorecase', '-w', '-word',
        \ '-e', '-regex', '-u', '-skip-vcs-ignores', '-t', '-extension']
  return join(list, "\n")
endfunction

"==========================================
" code
"==========================================

let which_key_map.c = {
            \'name': "+code",
            \'n': 'rename',
            \'f': 'format',
            \'r': 'refactor',
			\'c': 'comment',
			\'i': 'import',
            \}
" Symbol renaming.
nmap <leader>cn <Plug>(coc-rename)
" Formatting selected code.
xmap <leader>cf  <Plug>(coc-format)
nmap <leader>cr <Plug>(coc-refactor)
nmap <leader>cc <Plug>(NERDCommenterToggle)
nmap <silent> <leader>ci :CocCommand editor.action.organizeImport<CR>

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current line.
" nmap <leader>ac  <Plug>(coc-codeaction)

" Introduce function text object
" NOTE: Requires 'textDocument.documentSymbol' support from the language server.
" xmap if <Plug>(coc-funcobj-i)
" xmap af <Plug>(coc-funcobj-a)
" omap if <Plug>(coc-funcobj-i)
" omap af <Plug>(coc-funcobj-a)

" Use <TAB> for selections ranges.
" NOTE: Requires 'textDocument/selectionRange' support from the language server.
" coc-tsserver, coc-python are the examples of servers that support it.
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)


let which_key_map.e = 'explorer'
nnoremap <silent> <leader>e :CocCommand explorer<CR>

let which_key_map.m = {
            \'name': '+bookmark',
            \'t': 'create/delete bookmark',
            \'n': 'next',
            \'p': 'preview',
			\'a': 'annotate',
            \}
nmap <leader>mt <Plug>(coc-bookmark-toggle)
nmap <leader>mn <Plug>(coc-bookmark-next)
nmap <leader>mp <Plug>(coc-bookmark-prev)
nmap <leader>ma <Plug>(coc-bookmark-annotate)

let which_key_map.t = {
            \'name': '+terminal',
            \'c': 'new',
            \'n': 'next',
            \'p': 'preview',
			\'t': 'toggle',
			\'k': 'close',
            \}
" nnoremap <silent> <leader>tc :CocCommand floaterm.new<CR>
" nnoremap <silent> <leader>tn :CocCommand floaterm.next<CR>
" nnoremap <silent> <leader>tp :CocCommand floaterm.prev<CR>
" nnoremap <silent> <leader>tt :CocCommand floaterm.toggle i<CR>
let g:floaterm_keymap_new    = '<leader>tc'
let g:floaterm_keymap_prev   = '<leader>tn'
let g:floaterm_keymap_next   = '<leader>tp'
let g:floaterm_keymap_toggle = '<leader>tt'
let g:floaterm_keymap_kill   = '<leader>tk'

let which_key_map.d = {
            \'name': '+diagnostic',
            \'n': 'next',
            \'p': 'prev',
			\'f': 'fix',
            \}
" navigate diagnostics
nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)
nmap <silent> <leader>df <Plug>(coc-fix-current)

let which_key_map.u = {
            \'name': '+cursor',
            \'c': 'position',
            \'d': 'range/word',
			\'x': 'operator',
            \}
nmap <silent> <leader>uc <Plug>(coc-cursors-position)
nmap <silent> <leader>ud <Plug>(coc-cursors-word)
xmap <silent> <leader>ud <Plug>(coc-cursors-range)
nmap <silent> <leader>ux  <Plug>(coc-cursors-operator)
