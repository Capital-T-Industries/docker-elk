ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}

ARG LS_INPUT_FILE

COPY --chown=logstash:root ./config /usr/share/logstash/config/
COPY --chown=logstash:root ./pipeline /usr/share/logstash/pipeline/
RUN install --owner=logstash --group=root -d "$(dirname $LS_INPUT_FILE)"

