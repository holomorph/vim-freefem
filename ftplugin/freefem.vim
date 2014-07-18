" Vim filetype plugin file
" Language:	FreeFem++

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/c.vim ftplugin/c_*.vim ftplugin/c/*.vim

" if !exists("current_compiler")
"   compiler freefem
" endif

setlocal commentstring=//%s
