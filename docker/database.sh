#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER demo_user WITH ENCRYPTED PASSWORD 'demo_pass';
    CREATE DATABASE demo_db;
    GRANT ALL PRIVILEGES ON DATABASE demo_db TO demo_user;
EOSQL
