# Elastic stack (ELK) on Docker

## Basic Usage
```bash
$ docker-compose up
```

* Elasticsearch will be running locally on port **9200**
* Logstash will be running locally on port **9600** and be accepting tcp input on port **5000**
* Kibana will be running locally on port **5601**

<br>

### 1. Send a message through Logstash
```bash
echo "sample data" | nc localhost 5000
```

### 2. Query index data from Elasticsearch
```bash
echo "sample data" | nc localhost 5000
```

### 3. [Create strunning visualizations in Kibana](https://www.elastic.co/products/kibana)

<br>

## Custom Usage

Configuration options can be set in the [`.env`](.env) file in the root of the repo.

The *default* values are:
```bash
ELK_VERSION=6.4.0
LOG_LEVEL=info

ES_HOST=host.docker.internal
ES_PORT=9200
ES_CLUSTER_PORT=9300

LS_PORT=9600
LS_INPUT_PORT=5000
LS_INPUT_CODEC=line
LS_OUTPUT_INDEX="logstash-%{+YYYY.MM.dd}"

KB_PORT=5601
```

Set the overrides either in the [`.env`](.env) or as in the environment, then run `docker-compose` as usual.

```bash
$ docker-compose up
```
