if exists("snnm")
	finish
endif
let snnm = 1

if !exists("g:snnmapp")
	let g:snnmapp = "snnm"
endif

if !exists("g:snnm_autoclose")
	let g:snnm_autoclose = 1
endif

command! -bang -nargs=* Snnm call snnm#Snnm(<f-args>)
