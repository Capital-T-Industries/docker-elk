ARG ELK_VERSION
ARG LS_LOGFILE

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}
RUN mkdir -p "$(dirname $LS_LOGFILE)" && touch "$LS_LOGFILE"
