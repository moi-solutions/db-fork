# db-fork
Script to automate the creation of a database based on a template in Postgresi

## Environment variables

    POSTGRES_BIN_PATH // /Applications/Postgres.app/Contents/Versions/9.6/bin/
    POSTGRES_BIN_NAME // createdb
    POSTGRES_DATABASE_TEMPLATE_NAME // development
    POSTGRES_DATABASE_HOST // localhost
    POSTGRES_DATABASE_USERNAME // postgres

## Remote call (using default variable)

    $ wget -qO- https://raw.githubusercontent.com/moi-solutions/db-fork/1.0/createdb.sh | bash
