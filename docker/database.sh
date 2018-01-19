#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL

CREATE USER demo_user WITH PASSWORD 'demo_pass' ;
CREATE DATABASE demo_db OWNER demo_user;

EOSQL
