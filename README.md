# The ELK stack (Elasticsearch, Logstash, Kibana) powered by Docker and Compose

![GitHub version](https://img.shields.io/github/release/Capital-T-Industries/docker-elk.svg)
![GitHub license](https://img.shields.io/github/license/Capital-T-Industries/docker-elk.svg)

## Basic Usage
```bash
$ docker-compose up
```

* Elasticsearch will be running locally on port **9200**
* Logstash will be running locally on port **9600** and be accepting tcp input on port **5000**
* Kibana will be running locally on port **5601**

#### 1. Send a message through Logstash
```bash
$ echo "sample data" | nc localhost 5000
```

#### 2. Query data from Elasticsearch
```bash
$ curl -XGET "http://0.0.0.0:9200/logstash-*/_search?q=message:*data*"
```

```
{
  ...
  "hits": {
    "total": 1,
    "max_score": 1,
    "hits": [
      ...
    ]
  }
}
```

#### 3. [Create stunning visualizations in Kibana](https://www.elastic.co/products/kibana)

## Custom Usage

Configuration options can be set in the [`.env`](.env) file in the root of the repo.

The *default* values are:
```bash
ELK_VERSION=6.4.0
LOG_LEVEL=info

ES_PORT=9200
ES_CLUSTER_PORT=9300

LS_PORT=9600
LS_INPUT_TCP_PORT=5000
LS_INPUT_TCP_CODEC=line
LS_OUTPUT_INDEX=logstash-%{+YYYY.MM.dd}

KB_PORT=5601
```

Set the overrides either in the [`.env`](.env) or as in the environment, then run `docker-compose` as usual.

```bash
$ docker-compose up
```

## Contributing
* [Bug Report](.github/bug_report.md)
* [Feature Request](.github/eature_request.md)

## License
MIT &copy; [**Capital T Industries**](https://github.com/Capital-T-Industries)
