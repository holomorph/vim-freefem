" Vim compiler plugin file
" Language:	FreeFem++

if exists("current_compiler")
  finish
endif
let current_compiler = "freefem"

if exists(":CompilerSet") != 2
  command -nargs=* CompilerSet setlocal <args>
endif

CompilerSet errorformat=Error\ line\ number\ %l,\ in\ file\ %f,
CompilerSet makeprg=FreeFem++\ -ne\ %
