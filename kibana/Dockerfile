ARG ELK_VERSION

# https://github.com/elastic/kibana-docker
FROM docker.elastic.co/kibana/kibana-oss:${ELK_VERSION}

COPY --chown=kibana:root ./config /usr/share/kibana/config/
