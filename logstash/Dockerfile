ARG ELK_VERSION

# https://github.com/elastic/logstash-docker
FROM docker.elastic.co/logstash/logstash-oss:${ELK_VERSION}

USER root
COPY pipeline/ /usr/share/logstash/pipeline/
RUN yum install -y gettext && \
    envsubst < /usr/share/logstash/pipeline/logstash.conf.template > /usr/share/logstash/pipeline/logstash.conf
USER logstash

# Add your logstash plugins setup here
# Example: RUN logstash-plugin install logstash-filter-json
