#!/bin/bash

# This script restores a gzipped PostgreSQL database dump to an existing database.
if [ $# -eq 0]
then
  echo "No arguments passed. USAGE: ./restore_sql_gzip_dump.sh <USER> <HOST> <INPUT_FILE>"
  exit 2
else
  $USER=$1
  $HOST=$2
  $DATABASE=$3
  $INPUT_FILE=$4
  
  gunzip -c  $INPUT_FILE | psql -U $USER -h $HOST $DATABASE

fi
