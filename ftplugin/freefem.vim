" Vim filetype plugin file
" Language:	FreeFem++
" License:	GPLv3

if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

runtime! ftplugin/c.vim ftplugin/c_*.vim ftplugin/c/*.vim

" if !exists("current_compiler")
"   compiler freefem
" endif

setlocal commentstring=//%s
