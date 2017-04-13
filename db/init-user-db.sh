#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" <<-EOSQL
    CREATE USER django_user PASSWORD 'django_password';
    CREATE DATABASE django_mytweetsdb;
    GRANT ALL PRIVILEGES ON DATABASE django_mytweetsdb TO django_user;
EOSQL
