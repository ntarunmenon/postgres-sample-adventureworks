#!/bin/bash

set -e
cd /data
psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
   \i 01_install.sql
EOSQL