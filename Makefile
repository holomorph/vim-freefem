PREFIX      = /usr/local
datarootdir = ${PREFIX}/share
vimdir      = ${datarootdir}/vim/vimfiles

install:
	install -Dm644 compiler/edp.vim ${DESTDIR}${vimdir}/compiler/edp.vim
	install -Dm644 syntax/edp.vim   ${DESTDIR}${vimdir}/syntax/edp.vim
	install -Dm644 ftdetect/edp.vim ${DESTDIR}${vimdir}/ftdetect/edp.vim
	install -Dm644 ftplugin/edp.vim ${DESTDIR}${vimdir}/ftplugin/edp.vim

.PHONY: install
