"==========================================
" vim which key Settings  初始化
"==========================================
let g:which_key_map =  {}
autocmd VimEnter * call which_key#register('<Space>', 'g:which_key_map')
nnoremap <silent> <leader> :<c-u>WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :<c-u>WhichKeyVisual '<Space>'<CR>

"==========================================
" Keys Settings  自定义快捷键设置
"==========================================

" commen keys ------------------------- {{{
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
  
" }}}


" vim keys ------------------------- {{{
  let which_key_map.v =  {
          \ "name": "+vim",
          \ "i": "package install",
          \ "u": "package update",
          \ "c": "package clean",
          \ "s": "package status",
          \ "r": "reload vimrc",
    \ }

  nnoremap <silent> <leader>vi <cmd>PackInstall<cr>
  nnoremap <silent> <leader>vu <cmd>PackUpdate<cr>
  nnoremap <silent> <leader>vc <cmd>PackClean<cr>
  nnoremap <silent> <leader>vs <cmd>PackStatue<cr>
  nnoremap <silent> <Leader>vr :source $MYVIMRC<CR>
  
" }}}


" goto command ------------------------- {{{
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
  nmap <silent> <leader>gs :vsp<CR><Plug>(coc-definition)
  nmap <silent> <leader>gy <Plug>(coc-type-definition)
  nmap <silent> <leader>gi <Plug>(coc-implementation)
  nmap <silent> <leader>gr <Plug>(coc-references)
" }}}

" search ------------------------- {{{
  
  let which_key_map.f = {
              \'name': '+list',
              \'f': 'find files',
              \'o': 'outline',
              \'g': 'grep project',
              \'w': 'word in current buffer',
              \'r': 'rencent',
              \}
  " Find symbol of current document.
  nnoremap <silent> <leader>fo  :<C-u>CocList outline<cr>
  " Find fils of current project.
  nnoremap <silent> <leader>ff  :<C-u>CocList files<cr>
  " Search workspace.
  nnoremap <silent> <leader>fg  :<C-u>CocList grep<CR>

  " Search current word in current buffer
  nnoremap <silent> <leader>fw  :<C-u>CocList words<CR>
  " Search project
  nnoremap <silent> <leader>fr  :<C-u>CocList mru<CR>

  " Search line
  nnoremap <silent> <leader>fl  :<C-u>CocList lines<CR>

" }}}


" window ------------------------- {{{
  let which_key_map.w = {
    \ 'name': "+window",
    \ 't': 'explore',
    \ 'v': 'vista',
    \ }
  nnoremap <silent> <leader>wt :CocCommand explorer<CR>
  nnoremap <silent> <leader>wv <cmd>Vista!!<CR>
" }}}


" Code -------------------------{{{
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
nmap <silent> <leader>ci <cmd>CocCommand editor.action.organizeImport<cr>
xmap <leader>ca <Plug>(EasyAlign)
nmap <leader>ca <Plug>(EasyAlign)
  
" }}}


" terminal ------------------------- {{{
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
" }}}

" diagnostics ------------------------- {{{
  let which_key_map.d = {
              \'name': '+diagnostic',
              \'n': 'next',
              \'p': 'prev',
              \'f': 'fix',
              \'r': 'refresh'
              \}
  " navigate diagnostics
  nmap <silent> <leader>dp <Plug>(coc-diagnostic-prev)
  nmap <silent> <leader>dn <Plug>(coc-diagnostic-next)
  nmap <silent> <leader>df <Plug>(coc-fix-current)
  nmap <silent> <leader>dr <Plug>(coc-action-diagnosticRefresh)
" }}}


" multi cursor ------------------------- {{{
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
" }}}


" buffer ------------------------- {{{
  let which_key_map.b = {
          \ 'name': '+buffer',
          \ '1': "buffer 1",
          \ '2': "buffer 2",
          \ '3': "buffer 3",
          \ '4': "buffer 4",
          \ '5': "buffer 5",
          \ '6': "buffer 6",
          \ '7': "buffer 7",
          \ '8': "buffer 8",
          \ '9': "buffer 9",
          \ '[': "prev buffer",
          \ ']': "next buffer",
          \ 'd': "delete"
    \ }
  nmap <Leader>b1 <Plug>lightline#bufferline#go(1)
  nmap <Leader>b2 <Plug>lightline#bufferline#go(2)
  nmap <Leader>b3 <Plug>lightline#bufferline#go(3)
  nmap <Leader>b4 <Plug>lightline#bufferline#go(4)
  nmap <Leader>b5 <Plug>lightline#bufferline#go(5)
  nmap <Leader>b6 <Plug>lightline#bufferline#go(6)
  nmap <Leader>b7 <Plug>lightline#bufferline#go(7)
  nmap <Leader>b8 <Plug>lightline#bufferline#go(8)
  nmap <Leader>b9 <Plug>lightline#bufferline#go(9)
  nnorema <silent> <leader>b[ <cmd>bprev<cr>
  nnorema <silent> <leader>b] <cmd>bnext<cr>
  nnorema <silent> <leader>bd <cmd>bd<cr>
" }}}


" asynctask ------------------------- {{{
  let which_key_map.r = {
    \ 'name': '+task',
    \ 'e': 'edit',
    \ 'l': 'list',
    \ }
  nnoremap <silent> <leader>re <cmd>AsyncTaskEdit<cr>
  nnoremap <silent> <leader>rl <cmd>CocList tasks<cr>
" }}}

