# The ELK stack (Elasticsearch, Logstash, Kibana) powered by Docker and Compose

![GitHub tag](https://img.shields.io/github/release/Capital-T-Industries/docker-elk.svg)
![GitHub](https://img.shields.io/github/license/Capital-T-Industries/docker-elk.svg)

## Basic Usage
```bash
$ docker-compose up
```

* Elasticsearch will be running locally on port **9200**
* Logstash will be running locally on port **9600** and be accepting tcp input on port **5000**
* Kibana will be running locally on port **5601**

#### 1a. Send a message through Logstash via tcp
```bash
$ echo '{"humidity": "0.5800", "temperature": "22.00", "timestamp": "2018-09-15T03:02:22.957141"}' | nc localhost 5000
```

#### 1b. Send a message through Logstash via file

```bash
# from the project root directory (i.e. docker-elk)
$ echo '{"humidity": "0.5410", "temperature": "21.10", "timestamp": "2018-09-15T04:12:22.572141"}' >> ./logstash/log/output.log
```

#### 2. Query data from Elasticsearch
```bash
$ curl -XGET "http://0.0.0.0:9200/logstash-*/_search?q=message:*data*"
```

```
{
  ...
  "hits": {
    "total": 2,
    "max_score": 1,
    "hits": [
      ...
    ]
  }
}
```

#### 3. [Create strunning visualizations in Kibana](https://www.elastic.co/products/kibana)

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
LS_INPUT_TCP_PORT=5000
LS_INPUT_TCP_CODEC=json
LS_INPUT_FILE_LOCAL=./logstash/log/output.log
LS_INPUT_FILE=/usr/share/logstash/log/output.log
LS_INPUT_FILE_CODEC=json
LS_OUTPUT_INDEX=sensor

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
