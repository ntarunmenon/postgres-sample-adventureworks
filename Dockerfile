
FROM postgres
ENV POSTGRES_PASSWORD adventureworks_user
ENV POSTGRES_USER adventureworks_user
ENV POSTGRES_DB adventureworks
ADD /data/data.tar.xz /data
COPY /init-script /docker-entrypoint-initdb.d