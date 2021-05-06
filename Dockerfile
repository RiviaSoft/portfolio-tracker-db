FROM mysql:5.7
COPY database_create.sql /docker-entrypoint-initdb.d