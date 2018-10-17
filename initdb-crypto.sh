#!/bin/sh

set -e

# Perform all actions as $POSTGRES_USER
export PGUSER="$POSTGRES_USER"

# Load PostGIS into both template_database and $POSTGRES_DB
for DB in "$POSTGRES_DB"; do
	echo "Loading Crypto extensions into $DB"
	"${psql[@]}" --dbname="$DB" <<-'EOSQL'
		CREATE EXTENSION IF NOT EXISTS crypto;
EOSQL
done
