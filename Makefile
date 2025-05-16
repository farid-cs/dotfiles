include config.mk

all:

install:
	cp -p .zprofile ${HOME}
	mkdir -p ${PREFIX}/bin
	cp -p scripts/* ${PREFIX}/bin

uninstall:
	rm -rf ${HOME}/.zprofile
	for f in scripts/*; do rm -f ${PREFIX}/bin/$$f; done

.PHONY: all install uninstall
