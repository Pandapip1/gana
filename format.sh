#!/bin/sh
##
# Usage: format.sh TEMPLATE
#
# This runs recfmt w/ template file TEMPLATE on stdin, writing to stdout.
##
me=$(basename $0)

version='1.2'
# 1.2  -- add check for required arg TEMPLATE
# 1.1  -- add --help/--version support
# 1.0  -- initial release

if [ x"$1" = x--help ] ; then
    sed '/^##/,/^##/!d;/^##/d;s/^# //g;s/^#$//g' $0
    exit 0
fi

if [ x"$1" = x--version ] ; then
    echo $me '(gana)' $version
    exit 0
fi

if [ x"$1" = x ] ; then
    echo >&2 "$me: ERROR: missing arg TEMPLATE (try --help)"
    exit 1
fi

template="$1"

exec recfmt -f "$template"

# format.sh ends here
