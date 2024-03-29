#!/bin/bash
set -e # exit immediately if a command exits with a non-zero status.

POSTGRES="psql --username postgres"

echo "Creating database: shared"
$POSTGRES <<EOSQL
CREATE DATABASE shared OWNER shared;
EOSQL