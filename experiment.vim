"==========================================
" experiment function and feature
"==========================================
function! OpenTerm()
	let bufnr = bufnr("%")
	let winnr = winbufnr(bufnr)
	let wh = winheight(winnr)
	let ww = winwidth(winnr)
	let margin = 10

	wincmd ge
	let g:termwin = nvim_open_win(bufnr, v:true, {'relative': 'editor', 'row': margin/2, 'col': margin, 'width': ww-2*margin, 'height': wh-margin})
	terminal
	startinsert
endfunction

function! CloseTerm()
	call nvim_win_close(g:termwin, v:true)
endfunction

function! CloseBuffer()
	call lightline#bufferline#delete(bufnr("%"))
endfunction
