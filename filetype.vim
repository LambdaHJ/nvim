"==========================================
" FileType Settings  文件类型设置
"==========================================

" 具体编辑文件类型的一般设置，比如不要 tab 等
autocmd FileType python set tabstop=4 shiftwidth=4 expandtab ai
autocmd FileType ruby,javascript,html,css,xml set tabstop=2 shiftwidth=2 softtabstop=2 expandtab ai
autocmd BufRead,BufNewFile *.md,*.mkd,*.markdown set filetype=markdown.mkd
autocmd BufRead,BufNewFile *.part set filetype=html
" disable showmatch when use > in php
au BufWinEnter *.php set mps-=<:>


" 保存python文件时删除多余空格
fun! <SID>StripTrailingWhitespaces()
    let l = line(".")
    let c = col(".")
    %s/\s\+$//e
    call cursor(l, c)
endfun
autocmd FileType c,cpp,java,go,php,javascript,puppet,python,rust,twig,xml,yml,perl autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

autocmd FileType go let b:coc_pairs_disabled = ['<'] | let b:coc_root_patterns = ['.git', 'go.mod']

