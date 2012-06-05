#! /bin/bash
#
# Delete MonetDB database.
#

usage="usage: $0 <db> <user> <pass> <schema>"

[ "x$1" = "x" ] && echo $usage && exit 1
[ "x$2" = "x" ] && echo $usage && exit 1
[ "x$3" = "x" ] && echo $usage && exit 1
[ "x$4" = "x" ] && echo $usage && exit 1
db=$1
user=$2
pass=$3
schema=$4

echo "Stopping ${db} ..."
monetdb stop ${db}
echo "Destroying ${db} ..."
monetdb destroy -f ${db}