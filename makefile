# makefile for urlwatch

PACKAGE=urlwatch
VERSION=`python -c 'import watch; print watch.__version__'`
FILES=*.txt README *.py makefile ChangeLog

all:
	true

release: clean
	mkdir -p .tmp/$(PACKAGE)-$(VERSION)/
	cp -rv $(FILES) .tmp/$(PACKAGE)-$(VERSION)/
	tar czvf $(PACKAGE)-$(VERSION).tar.gz -C .tmp $(PACKAGE)-$(VERSION)

clean:
	rm -rf *.pyc $(PACKAGE)-*.tar.gz .tmp

.PHONY: all release clean
