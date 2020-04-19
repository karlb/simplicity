
all: build/index.html build/web.html

watch:
	 ls | entr make

build/%.html :  %.md template.html Makefile
	cat template.html > $@
	smu $< >> $@
