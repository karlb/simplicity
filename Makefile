
all: build/index.html build/web.html build/suckless-desktop.html

clean:
	rm -f build/*

watch:
	 ls | entr make

build/%.html :  %.md template.html Makefile
	cat template.html > $@
	smu $< >> $@

deploy:
	rsync -avz build/ -e ssh www.wikdict.com:hosts/static.karl.berlin/simplicity
