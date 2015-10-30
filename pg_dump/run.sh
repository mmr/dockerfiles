#!/bin/bash -e
usage() {
    name=${0##*/}
    echo "Usage: $name"
    echo "-u|--user: db user, required"
    echo "-h|--host: db host, required"
    echo "-d|--db  : db name, required"
    echo "-f|--file: name of the dump file to be created, optional"
    echo "           a file with the current date will be created if none is given"
    echo "-z|--gzip: to compress the output file with gzip, optional"
    exit
}

while [ $# -gt 0 ]; do
    case $1 in
        -u|--user) db_user="$2"; shift;;
        -h|--host) db_host="$2"; shift;;
        -d|--db)   db_name="$2"; shift;;
        -f|--file) out_file="$2"; shift;;
        -z|--gzip) gzip=yes;;
        *) usage;;
    esac
    shift
done

if [ -z $db_user ] || [ -z $db_host ] || [ -z $db_name ]; then
    usage
fi

if [ -z $out_file ]; then
    out_file="dump-$(date +%Y%m%d).sql"
fi
out_file="/data/$out_file"

echo "Dumping '$db_name' as '$db_user@$db_host' to '$out_file'..."
pg_dump -U "$db_user" -h "$db_host" "$db_name" > "$out_file"

if ! [ -z "$gzip" ]; then
    echo "Compressing $out_file..."
    gzip -9 "$out_file"
fi
