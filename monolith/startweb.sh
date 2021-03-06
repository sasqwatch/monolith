#!/bin/sh

if [ -z "$DB_HOST" ]; then
  echo "DB_HOST is empty"
  exit
fi

if [ -z "$DB_PORT" ]; then
  echo "DB_PORT is empty"
  exit
fi

if [ -z "$DB_NAME" ]; then
  DB_NAME=monolith-database
fi

sleep 3
python3 monolith_web.py --db-host=$DB_HOST --db-port=$DB_PORT --db-name=$DB_NAME
