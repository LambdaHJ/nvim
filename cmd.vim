" 最后窗口时自动关闭
autocmd BufEnter * nested if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
