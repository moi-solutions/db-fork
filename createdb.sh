#!/bin/bash
#
# To create database based template
# This work in Mac OS using https://postgresapp.com/
# Requiere Postgres 9.6
#

# Postgres binary path
PG_BIN_PATH=${POSTGRES_BIN_PATH:=/Applications/Postgres.app/Contents/Versions/9.6/bin/}

# Postgres binary name
PG_BIN_NAME=${POSTGRES_BIN_NAME:=createdb}

# Postgres database template name
PG_DATABASE_TEMPLATE_NAME=${POSTGRES_DATABASE_TEMPLATE_NAME:=development}

# Postgres database host
PG_DATABASE_HOST=${POSTGRES_DATABASE_HOST:=localhost}

# Postgres database username
PG_DATABASE_USERNAME=${POSTGRES_DATABASE_USERNAME:=postgres}

# To get branch name
branch=$(git rev-parse --abbrev-ref HEAD)
database_prefix="gandalf-dev_"

if [[ $branch =~ .*hotfix* ]]
then
   database="${$database_prefix}hotfix"
else
   database="${database_prefix}${branch}"
fi

cmd="${PG_BIN_PATH}${PG_BIN_NAME} -T ${PG_DATABASE_TEMPLATE_NAME} ${database} -h ${PG_DATABASE_HOST} -U ${PG_DATABASE_USERNAME} -w"

eval $cmd

echo "Database created!"
