#!/usr/bin/env bash



###   documentation   ###

# This function is for setting and printing a help page to the screen.
# It takes a HERE doc or a file as input to set the help page.
# The print function prints the help page ariable to the screen.



###   global variables   ###

declare BF__HELP_PAGE__TEXT



###   functions   ###

# Set help page text.
bf__help_page_set() {

    # Check if stdin is redirected (non-terminal) and save it to HELP_PAGE__TEXT.
    # Print an error if input is interactive (keyboard) or empty.
    if [ ! -t 0 ]; then
        BF__HELP_PAGE__TEXT="$(</dev/stdin)"
    else
        echo "ERROR: bf__help_page: No input. Usage: bf__help_page_set << EOF ... EOF, or bf__help_page_set < file" >&2; return 1
    fi

}


# Get help page text.
bf__help_page_get() {

    # Print help message.
    # Print an error If HELP_PAGE__TEXT is not yet set.
    if [ -n "$BF__HELP_PAGE__TEXT" ]; then
        echo "$BF__HELP_PAGE__TEXT"
    else
        echo "ERROR: bf__help_page_get: Help page not yet set. Usage: bf__help_page_set << EOF ... EOF, or bf__help_page_set < file" >&2; return 1
    fi

}
