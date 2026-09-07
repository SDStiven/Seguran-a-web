FROM postgres:18

ENV POSTGRES_USER=postgresST
ENV POSTGRES_PASSWORD=postgresST
ENV POSTGRES_DB=todolistST

COPY schema.sql /docker-entrypoint-initdb.d/schema.sql