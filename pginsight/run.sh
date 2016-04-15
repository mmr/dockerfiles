#!/bin/sh

PGINSIGHT='/pginsight'

usage() {
  echo "$0 -h host -u user -p pass -d db -c cmd"
  exit 1
}

db_host=''
db_user=''
db_pass=''
db_name=''
cmd=''

while [ $# -gt 0 ]; do
  case $1 in
    -h|--host) db_host="$2"; shift;;
    -u|--user) db_user="$2"; shift;;
    -p|--pass) db_pass="$2"; shift;;
    -d|--db)   db_name="$2"; shift;;
    -c|--cmd)  cmd="$2"; shift;;
    *) usage
  esac
  shift
done

if [ -z "$db_host" -o -z "$db_user" -o -z "$db_pass" ]; then
  usage
fi

PGINSIGHT_DBURL="postgres://$db_user:$db_pass@$db_host/$db_name?sslmode=disable" $PGINSIGHT $cmd
