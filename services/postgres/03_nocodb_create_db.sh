#!/bin/bash
set -e # exit immediately if a command exits with a non-zero status.

POSTGRES="psql --username postgres"

echo "Creating database: nocodb"
$POSTGRES <<EOSQL
CREATE DATABASE nocodb OWNER nocodb;
EOSQL