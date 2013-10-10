" Vim filetype plugin file
" Language:	FreeFem++

if exists("b:did_ftplugin")
  finish
endif

runtime! ftplugin/c.vim ftplugin/c_*.vim ftpluugin/c/*.vim

setlocal commentstring=//%s
