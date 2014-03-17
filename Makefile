#--------------------------------------------------------
# File: Makefile    Author(s): Simon Désaulniers
# Date: 2014-03-12
#--------------------------------------------------------

install=install -Dvp --owner=root --group=root

program=mkproj
bindir=/usr/bin
destdir=/usr/share/$(program)
docdir=/usr/share/man/man1
bash_completion_dir=/usr/share/bash-completion/completions

.PHONY: clean config install
config:
	@echo "Configuring the script..."
	sed -e "s,install_dir=.*,install_dir='$(destdir)'," $(program) >tmp && mv tmp $(program)
install: config
ifneq ($(USER),root)
	@echo "fail: has to be executed as root..."
else
	@echo "Installing mkproj..."
	$(install) --mode=755 mkproj $(bindir)
	cp -r default $(destdir)

	@echo "Configuring bash tab completion..."
	$(install) $(program)_bash_completion $(bash_completion_dir)/$(program)
endif
uninstall:
ifneq ($(USER),root)
	@echo "fail: has to be executed as root..."
else
	rm -rf $(bindir)/$(program) $(destdir)
endif
