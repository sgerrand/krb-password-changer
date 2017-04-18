#!/bin/sh
set -e

main() {
    validate_account "$1"
    kinit "$1"
    kpasswd
}

usage() {
    echo "Usage: <container> <email_address>"
}

validate_account() {
    test -z "$1" \
        && echo "You need to provide an email address" \
        && usage \
        && exit 100
}

main "$@"
