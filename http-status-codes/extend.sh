#!/bin/sh
# Extend all IANA records with a C-style identifier in all-caps.
set -eu

TARGET="$1"
shift
cat "$@" > ${TARGET}

for n in `seq 100 599`
do
    VAL=`recsel -e "Value = $n" -P Description iana.rec || true`
    CAPS=`echo ${VAL} | tr [a-z] [A-Z] | tr " -" "__"`
    recset -f Identifier -a "${CAPS}" -e "Value = $n" ${TARGET}
done


# Apply fixes for records defined differently by MHD:
recset -f Identifier -s "SWITCH_PROXY" -e "Value = 306" ${TARGET}
recset -f Description -s "Switch proxy (not used)" -e "Value = 306" ${TARGET}
