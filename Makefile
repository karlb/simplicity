
all: $(patsubst %.md,build/%.html,$(wildcard *.md))

clean:
	rm -f build/*

watch:
	 ls | entr make

build/%.html :  %.md template.html template.awk Makefile
	./template.awk FNAME=$< template.html > $@

deploy:
	rsync -avz build/ -e ssh www.wikdict.com:hosts/static.karl.berlin/simplicity
