let g:lightline = { 
\    'colorscheme': 'nord', 
\    'active': { 
\        'left': [ 
\           ['mode', 'paste'], 
\           ['filename'], 
\           ['curfunction'], 
\        ], 
\        'right': [ 
\            ['lineinfo'],
\            ['fileencoding'],
\            ['cocstatus'],
\        ]
\    },
\    'inactive': {
\        'left': [['mode']],
\        'right': [],
\    },
\    'component_function': {
\        'mode': 'LightlineModeOrPlugin',
\        'filename': 'LightlineFilename',
\        'fileencoding': 'LightlineFileencoding',
\        'lineinfo': 'LightlineLineinfo',
\        'cocstatus': 'coc#status',
\        'curfunction': 'LightlineFunction',
\        'gitbranch': 'LightlineGitBranch',
\    },
\    'separator': { 'left': '', 'right': '' },
\    'subseparator': { 'left': '', 'right': '' }
\ }


let s:panel_ignore = {'coc-explorer': 'Explorer', 'list': 'List', 'dashboard': ''}

function! LightlineModeOrPlugin()
	return !has_key(s:panel_ignore, &ft) ? lightline#mode() : get(s:panel_ignore, &ft, '')
endfunction

function! LightlineGitBranch()
	return !has_key(s:panel_ignore, &ft) ? FugitiveHead() : ''
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
