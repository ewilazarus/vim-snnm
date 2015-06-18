"-----------------------------------------------------------------------------
" Public API
"-----------------------------------------------------------------------------

function! snnm#Snnm(term, ...) "{{{
	echo 'Fetching "' . a:term . '" synonyms from http://www.thesaurus.com'

	" Searched for an opened buffer named SYNONYMS
	let s:bufferNumber = bufwinnr('^SYNONYMS$') " If found, focus - otherwise creates a new one
	if (s:bufferNumber >= 0)
		silent! exec 'bdelete! SYNONYMS'
	endif
	silent! exec 'topleft vertical 30 new'
	silent! exec 'file! SYNONYMS'

	" Set buffer options
	setlocal modifiable
    setlocal buftype=nofile
    setlocal bufhidden=wipe
    setlocal noswapfile
    setlocal nowrap
	setlocal nu

	let l:option = a:0 > 0 ? a:1 : "none"

	if (l:option ==# "-u" || l:option ==# "-c" || l:option ==# "-m" || l:option ==# "-o")
		exec 'read !' . g:snnmapp a:term l:option
	else
		exec 'read !' . g:snnmapp a:term
	endif

	" Deletes first blank line
	normal! ggdd

	" Changes buffer setting to nomodifiable
	setlocal nomodifiable

	" Redraws vim's window
	redraw!

	" Make local mappings
	mapclear <buffer>
	let b:term = a:term
	nmap <buffer> <cr> ^y$:q<cr>p
	nmap <buffer><silent> q :q<cr>
	nmap <buffer><silent> n :Snnm <c-r>=b:term<cr><cr>
	nmap <buffer><silent> c :Snnm <c-r>=b:term<cr> -c<cr>
	nmap <buffer><silent> m :Snnm <c-r>=b:term<cr> -m<cr>
	nmap <buffer><silent> u :Snnm <c-r>=b:term<cr> -u<cr>
	nmap <buffer><silent> o :Snnm <c-r>=b:term<cr> -o<cr>

endfunction "}}}
