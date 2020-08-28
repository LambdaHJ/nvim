let g:lightline = { 
\    'colorscheme': 'solarized', 
\    'active': { 
\        'left': [ 
\           ['mode', 'paste'], 
\           ['filename'], 
\           ['curfunction'], 
\           ['blame'],
\        ], 
\        'right': [ 
\            ['cocstatus'],
\            ['lineinfo'],
\            ['fileencoding'],
\        ]
\    },
\    'inactive': {
\        'left': [['mode']],
\        'right': [],
\    },
\    'component_function': {
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


let s:panel_ignore = {'coc-explorer': 'Explorer', 'list': 'List', 'dashboard': ''}

function! LightlineMode()
	return !has_key(s:panel_ignore, &ft) ? lightline#mode() : get(s:panel_ignore, &ft, '')
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
	return !has_key(s:panel_ignore, &ft) ?
		\ (LightlineReadonly() !=# '' ? ' ' . LightlineReadonly() . ' ' : '') .
		\ (fname !=# '' ? fname . ' '.WebDevIconsGetFileTypeSymbol().' ' : '[No Name]') .
		\ (LightlineModified() !=# '' ? ' ' . LightlineModified() : '') : ''
endfunction  

function! LightlineFileencoding()
	return !has_key(s:panel_ignore, &ft) ?
                \(&fenc !=# '' ? &fenc . ' ' . WebDevIconsGetFileFormatSymbol() : &enc. ' ' . WebDevIconsGetFileFormatSymbol() ): ''
endfunction

function! LightlineLineinfo()
	return !has_key(s:panel_ignore, &ft) ? ' '.line('.').':'. col('.').'  ' . '☰ '.line('.') * 100 / line('$') . '%'	 : ''
endfunction

function! LightlineGitBlame()
	let blame = get(b:, 'coc_git_status', '')
	return blame
endfunction
