FROM postgres:9.4
LABEL maintainer.name="Artur Oliveira" \
      maintainer.email="artur.oliveira@ufca.edu.br"

RUN mkdir -p /docker-entrypoint-initdb.d
COPY ./initdb-crypto.sh /docker-entrypoint-initdb.d/crypto.sh
