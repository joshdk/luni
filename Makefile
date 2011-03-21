SUCCESS_MSG = "  [\e[32m DONE \e[0m]"

all: build

install:
	@echo "Installing target:"
	@cp -f src/luni /bin/luni
	@mkdir -p /etc/luni/
	@cp -r glyphs /etc/luni/
	@echo -e $(SUCCESS_MSG)

uninstall:
	@echo "Uninstalling target:"
	@rm -f /bin/luni
	@rm -rf /etc/luni/
	@echo -e $(SUCCESS_MSG)

archive: build
	@echo "Archiving source:"
	#@rm -f archive.tar.bz2
	#@tar -cjf archive.tar.bz2 $(SOURCE) Makefile README*
	@echo -e $(SUCCESS_MSG)


