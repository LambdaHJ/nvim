let g:lightline = { 
\    'colorscheme': 'srcery', 
\    'active': { 
\        'left': [ 
\           ['wnum'],
\           ['mode', 'paste'], 
\           ['filename'], 
\           ['curfunction'], 
\        ], 
\        'right': [ 
\            ['cocstatus'],
\            ['lineinfo'],
\            ['fileencoding'],
\        ]
\    },
\    'inactive': {
\        'left': [['wnum']],
\        'right': [],
\    },
\    'component_function': {
\        'wnum': 'LightlineNum',
\        'mode': 'LightlineMode',
\        'filename': 'LightlineFilename',
\        'fileencoding': 'LightlineFileencoding',
\        'lineinfo': 'LightlineLineinfo',
\        'blame': 'LightlineGitBlame',
\        'cocstatus': 'coc#status',
\        'curfunction': 'LightlineFunction',
\    },
\    'component_expand': {
\        'buffers': 'lightline#bufferline#buffers',
\    },
\    'component_type': {
\        'buffers': 'tabsel',
\    },
\    'separator': { 'left': '', 'right': '' },
\    'subseparator': { 'left': '', 'right': '' }
\ }

let s:status_ignore = '^\(coc-explorer\|list\)'

function! LightlineNum()
    return winnr()
endfunction

function! LightlineMode()
	return &ft !~# s:status_ignore ? lightline#mode() : ''
endfunction

function! LightlineReadonly()
	return &readonly ? '' : ''
endfunction

function! LightlineFunction()
  return get(b:, 'coc_current_function', '')
endfunction

function! LightlineModified()
	return &ft ==# 'help' ? '' : &modified ? '' : &modifiable ? '' : ''
endfunction

function! LightlineFilename()
	let fname = expand('%:t')
	return &ft !~# s:status_ignore ?
		\ (LightlineReadonly() !=# '' ? ' ' . LightlineReadonly() . ' ' : '') .
		\ (fname !=# '' ? fname . ' '.WebDevIconsGetFileTypeSymbol().' ' : '[No Name]') .
		\ (LightlineModified() !=# '' ? ' ' . LightlineModified() : '') : ''
endfunction  

function! LightlineFileencoding()
	return &ft !~# s:status_ignore ?
                \(&fenc !=# '' ? &fenc . ' ' . WebDevIconsGetFileFormatSymbol() : &enc. ' ' . WebDevIconsGetFileFormatSymbol() ): ''
endfunction

function! LightlineLineinfo()
	return &ft !~# s:status_ignore ?
        \ ' '.line('.').':'. col('.').'  ' . '☰ '.line('.') * 100 / line('$') . '%' : ''
endfunction

function! LightlineGitBlame() abort
  let blame = get(b:, 'coc_git_blame', '')
  return blame
endfunction


