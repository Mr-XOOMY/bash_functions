#!/usr/bin/env bash



###   documentation   ###

# This function is for asking a password.
# It reads the input safely and checks if the passwords are equal.
# The password is saved via a name referenced variable.



###   functions   ###

# Ask for a password.
bf__ask_password() {

    # local variables
    local -n bf__ask_password__nameref__password="$1"
    bf__ask_password__nameref__password=""
    local bf__ask_password__password_confirmation
    bf__ask_password__password_confirmation=""
    local bf__ask_password__question1
    bf__ask_password__question1="${2:-Password        : }"
    local bf__ask_password__question2
    bf__ask_password__question2="${3:-Confirm password: }"



    # Get password.
    while [ -z "$(echo "$bf__ask_password__nameref__password" | tr -d ' ')" ]; do

        # Ask for passwords.
        read -rsp "$bf__ask_password__question1" bf__ask_password__nameref__password
        echo ""
        read -rsp "$bf__ask_password__question2" bf__ask_password__password_confirmation
        echo ""


        # Check passwords and return an error if passwords do not match.
        [ "$bf__ask_password__nameref__password" = "$bf__ask_password__password_confirmation" ] || { echo "Passwords do not match. Please try again." && bf__ask_password__nameref__password="" && bf__ask_password__password_confirmation=""; }


        # Insert a blank line.
        echo ""

    done

}
