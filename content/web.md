# Simplicity of This Web Site

## Resulting HTML

* No JS, no tracking, no custom fonts
* No external CSS
* Minimal styling

The largest part of the CSS is the styling of the navigation bar. I didn't find a way to create a pleasant and mostly normal looking navigation using unstyled HTML tags. Using such a small amount of CSS also removed the need for any CSS preprocessors like Sass. 

## Generation

* Lightweight markdown ([smu](https://github.com/karlb/smu))
* Minimal templating
* No dynamic content, just static files
* Use existing Unix tools (make, awk, sed, optionally [entr](http://eradman.com/entrproject/))

When building files from sources, `make` (or [`mk`](http://doc.cat-v.org/bell_labs/mk/)) is a great general purpose solution. There's no reason I shouldn't reuse that tool and my knowledge about it when building static web sites. Writing a `Makefile` is done much faster than learning any of the existing static site builders, at least as long as you don't need 90% of their features.

## Downsides

* Current page is not highlighted

Suggestions on how to add these in the most simple way are welcome!

## Source code

See all the details in the source code at <https://github.com/karlb/simplicity>.
