#!/usr/bin/awk -f
# Basic templating engine
# Execute commands inside {{{ }}} and insert their output

match($0, /(.*){{{ (.*) }}}(.*)/, m) {
	printf("%s", m[1])

	# Execute command inside {{{ }}} and print output
	cmd = m[2]
	gsub(/\$FILENAME/, FNAME, cmd)
	# gsub(/'/, "'\\''", cmd)
	# cmd = "bash -c -- '" cmd "'"
	first_line = 1
	while (cmd | getline > 0) {
		if (!first_line) {
			printf("\n")
		}
		printf("%s", $0)
		first_line = 0
	}
	close(cmd)

	printf("%s\n", m[3])
	next
}

//
