PREFIX ?= /usr

all:
	@echo RUN \'make install\' to install ppd
	@echo RUN \'make uninstall\' to uninstall ppd

install:
	@install -Dm755 ppd $(DESTDIR)$(PREFIX)/bin/ppd

uninstall:
	@rm -f $(DESTDIR)$(PREFIX)/bin/ppd
