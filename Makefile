install:
	install -Dm644 syntax/edp.vim ${DESTDIR}${PREFIX}/share/vim/vimfiles/syntax/edp.vim
	install -Dm644 ftdetect/edp.vim ${DESTDIR}${PREFIX}/share/vim/vimfiles/ftdetect/edp.vim
	install -Dm644 ftplugin/edp.vim ${DESTDIR}${PREFIX}/share/vim/vimfiles/ftplugin/edp.vim

.PHONY: install
