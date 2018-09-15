ARG ELK_VERSION

# https://github.com/elastic/elasticsearch-docker
FROM docker.elastic.co/elasticsearch/elasticsearch-oss:${ELK_VERSION}

COPY --chown=elasticsearch:root ./config /usr/share/elasticsearch/config/
#COPY --chown=elasticsearch:root ./*.sh ./*.json /usr/share/elasticsearch/

HEALTHCHECK CMD /bin/bash ./create-index.sh
