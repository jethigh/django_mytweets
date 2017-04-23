FROM postgres
ADD init-user-db.sh /docker-entrypoint-initdb.d/
RUN usermod -u 1000 postgres
