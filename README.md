# Elastic stack (ELK) on Docker

## Basic Usage
```bash
$ docker-compose up
```

* Elasticsearch will be running locally on port **9200**
* Logstash will be running locally on port **9600** and be accepting tcp input on port **500**
* Kibana will be running locally on port **5601**

## Custom Usage

Configuration options can be set in the [`.env`](.env) file in the root of the repo.

The default values are:
```bash
ELK_VERSION=6.4.0
LOG_LEVEL=info

ES_HOST=host.docker.internal
ES_PORT=9200
ES_CLUSTER_PORT=9300

KB_PORT=5601

LS_PORT=9600
LS_INPUT_PORT=5000
```

Set the overrides either in the [`.env`](.env) or as standard environment variables, then run `docker-compose`.

```bash
$ docker-compose up
```
