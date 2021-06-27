"==========================================
" Cmd Settings  自定义命令设置
"==========================================

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

augroup cocgroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" 最后窗口时自动关闭 TODO(和删除buffer冲突)
" autocmd BufEnter * nested if (winnr("$") == 1 && (&filetype == 'coc-explorer' || &filetype == 'list' || &filetype == 'packager')) | call CocCommand exlporer | endif

" 打开自动定位到最后编辑的位置, 需要确认 .viminfo 当前用户可写
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function s:floatermSettings()
    setlocal nonumber norelativenumber
endfunction

autocmd FileType floaterm call s:floatermSettings()

" Golang auto import on save.
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
