#!/bin/bash -eu

if [ $# -ne 1 ]; then
    echo "Usage: $0 db_name"
    echo "  db_name: database name"
    exit 1
fi

POSTGRES_DB="$1"

psql -U "$POSTGRES_USER" -d "$POSTGRES_DB" -h localhost -p 5432
