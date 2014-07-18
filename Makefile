NAME        = freefem
PREFIX      = /usr/local
datarootdir = ${PREFIX}/share
vimdir      = ${datarootdir}/vim/vimfiles

install:
	install -Dm644 compiler/${NAME}.vim ${DESTDIR}${vimdir}/compiler/${NAME}.vim
	install -Dm644 syntax/${NAME}.vim   ${DESTDIR}${vimdir}/syntax/${NAME}.vim
	install -Dm644 ftdetect/${NAME}.vim ${DESTDIR}${vimdir}/ftdetect/${NAME}.vim
	install -Dm644 ftplugin/${NAME}.vim ${DESTDIR}${vimdir}/ftplugin/${NAME}.vim
	install -Dm644 doc/${NAME}.txt      ${DESTDIR}${vimdir}/doc/${NAME}.txt

.PHONY: install
