#!/bin/sh
db_user="$1"
db_host="$2"
db_name="$3"
out_file="/data/dump-$(date +%Y%m%d).sql"

if [ -z $db_user ] || [ -z $db_host ] || [ -z $db_name ]; then
  echo "Usage: $0 db_user db_host db_name"
  exit
fi

echo "Dumping '$db_name' as '$db_user@$db_host'..."
pg_dump -U "$db_user" -h "$db_host" "$db_name" > "$out_file"
