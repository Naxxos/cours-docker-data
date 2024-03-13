#!/bin/bash
set -e # exit if a command exits with a not-zero exit code

POSTGRES="psql -U postgres"

# create a shared role to read & write general datasets into postgres
echo "Creating database role: nocodb"
$POSTGRES <<-EOSQL
CREATE USER nocodb WITH
    LOGIN
    NOSUPERUSER
    NOCREATEDB
    NOCREATEROLE
    NOINHERIT
    NOREPLICATION
    PASSWORD '$NOCODB_PASSWORD';
EOSQL