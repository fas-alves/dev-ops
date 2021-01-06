#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
    CREATE USER dev_user WITH ENCRYPTED PASSWORD 'dev_user_123';
    CREATE DATABASE development;
    GRANT ALL PRIVILEGES ON DATABASE development TO dev_user;
    CREATE USER keycloak_user WITH ENCRYPTED PASSWORD 'keycloak123';
    CREATE DATABASE keycloak;
    GRANT ALL PRIVILEGES ON DATABASE keycloak TO keycloak_user;
EOSQL