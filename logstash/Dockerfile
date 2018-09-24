ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}

COPY --chown=logstash:root ./config /usr/share/logstash/config/
COPY --chown=logstash:root ./pipeline /usr/share/logstash/pipeline/
