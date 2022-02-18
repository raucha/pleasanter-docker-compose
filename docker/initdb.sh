#!/bin/bash
set -e

service postgresql start

# 参考:
# https://hub.docker.com/_/postgres/

# psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
psql -v ON_ERROR_STOP=1 --username postgres <<-EOSQL
    alter role postgres with password 'XXXXX';
    create database "Implem.Pleasanter";
EOSQL
psql -d "Implem.Pleasanter" -c "create extension pg_trgm;"
