if !exists("g:snnmapp")
	let g:snnmapp = "snnm"
endif

let s:snnm_mappings = {
	  \ "c": "TODO",
	  \ "m": "TODO",
	  \ "u": "TODO",
	  \ "o": "TODO",
	  \ "<cr>": "TODO" }

if !exists("g:snnm_mappings")
	let g:snnm_mappings = s:snnm_mappings
endif

if !exists("g:snnm_highlight")
	let g:snnm_highlight = 1
endif

if !exists("g:snnm_autoclose")
	let g:snnm_autoclose = 0
endif

command! -bang -nargs=* Snnm call snnm#Snnm(<f-args>)

let g:loaded_snnm = 1
