"==========================================
" vim which key Settings  初始化
"==========================================
let g:which_key_map =  {}
autocmd VimEnter * call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

" terminal model use esc.
tnoremap <Esc> <C-\><C-n>

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

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



"==========================================
" WhichKey Key Bind
"==========================================

" command
let which_key_map.v =  {
	\ "name": "+vim",
	\ "u": "package update/install",
	\ "c": "package clean",
	\ "r": "reload vimrc",
  \ }

nnoremap <silent> <leader>vu :call minpac#update()<cr>
nnoremap <silent> <leader>vc :call minpac#clean()<cr>
nnoremap <silent> <Leader>vr :source $MYVIMRC<CR>

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
			\'a': 'alias',
            \}
" Symbol renaming.
nmap <leader>cn <Plug>(coc-rename)
" Formatting selected code.
nmap <silent> <leader>cf <plug>(coc-format)
vmap <silent> <leader>cf <plug>(coc-format-selected)
nmap <leader>cr <plug>(coc-refactor)
nmap <leader>cc <Plug>CommentaryLine
vmap <leader>cc <Plug>Commentary
nmap <silent> <leader>ci :coccommand editor.action.organizeimport<cr>
xmap <leader>ca <Plug>(EasyAlign)
nmap <leader>ca <Plug>(EasyAlign)

let which_key_map.e = 'explorer'
nnoremap <silent> <leader>e :CocCommand explorer<CR>

"==========================================
" coc bookmark
"==========================================

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

"==========================================
" terminal
"==========================================
let which_key_map.t = {
            \'name': '+terminal',
            \'s': 'split',
            \'n': 'next',
            \'p': 'preview',
			\'t': 'toggle',
			\'k': 'close',
            \}
nnoremap <leader>ts <cmd>FloatermNew --wintype=normal<CR>
" let g:floaterm_keymap_new    = '<leader>tc'
let g:floaterm_keymap_prev   = '<leader>tn'
let g:floaterm_keymap_next   = '<leader>tp'
let g:floaterm_keymap_toggle = '<leader>tt'
let g:floaterm_keymap_kill   = '<leader>tk'

"==========================================
" diagnostics
"==========================================

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

"==========================================
" multi cursor
"==========================================

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


"==========================================
" buffer
"==========================================

let which_key_map.b = {
	\ 'name': '+buffer',
	\ '1': "buffer 1",
	\ '2': "buffer 2",
	\ '3': "buffer 3",
	\ '4': "buffer 4",
	\ '5': "buffer 5",
	\ '[': "prev buffer",
	\ ']': "next buffer",
	\ 'd': "delete"
  \ }
nmap <Leader>b1 <Plug>lightline#bufferline#go(1)
nmap <Leader>b2 <Plug>lightline#bufferline#go(2)
nmap <Leader>b3 <Plug>lightline#bufferline#go(3)
nmap <Leader>b4 <Plug>lightline#bufferline#go(4)
nmap <Leader>b5 <Plug>lightline#bufferline#go(5)
nnorema <silent> <leader>b[ <cmd>bprev<cr>
nnorema <silent> <leader>b] <cmd>bnext<cr>
nnorema <silent> <leader>bd <cmd>bd<cr>
