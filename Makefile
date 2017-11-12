DESTDIR ?= /
VERSION = $$(git describe --tags | grep -Po '^\d+\.\d+\.\d+')

help:
	@echo 'Usage:'
	@echo 'make install'
	@echo 'make uninstall'
	@echo 'Options: DESTDIR'

root_test:
	@test "`whoami`" = 'root' || { echo root only!; exit 1; }

install: root_test
	@mkdir -m 755 -p ${DESTDIR}/usr/bin/ ${DESTDIR}/etc/ ${DESTDIR}/usr/doc/smsapi-${VERSION}/
	@cp -v smsapi smsapi-regroup ${DESTDIR}/usr/bin/
	@cp -v smsapi.conf ${DESTDIR}/etc/
	@cp -v LICENSE.md README.md ${DESTDIR}/usr/doc/smsapi-${VERSION}/
	@chmod 750 ${DESTDIR}/usr/bin/smsapi*
	@chmod 640 ${DESTDIR}/etc/smsapi.conf
	@chmod 644 ${DESTDIR}/usr/doc/smsapi-${VERSION}/*
	@echo done!

uninstall: root_test
	@rm -rfv ${DESTDIR}/usr/bin/smsapi*
	@rm -rfv ${DESTDIR}/usr/doc/smsapi*
	@rm -riv ${DESTDIR}/etc/smsapi.*
	@echo done!
