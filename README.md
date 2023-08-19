# README

This project has been created to experiment with Elasticsearch on Rails. You need to have an Elasticsearch server for Elasticsearch to work. I set up this server in a Docker container. If you don't want to use Docker, you should research how to install Elasticsearch on your operating system.

## Usage
1. To run the project:
    ```console
    docker build -t elastic-search-rails .
    # then
    docker compose up
    ```

2. Visit 'http://localhost:9200' and you will see something like this:
    ```json
    {
      "name": "80a4db2c1891",
      "cluster_name": "docker-cluster",
      "cluster_uuid": "aRbBo2xaTwOtc7rSr0KWCw",
      "version": {
        "number": "7.15.0",
        "build_flavor": "default",
        "build_type": "docker",
        "build_hash": "79d65f6e357953a5b3cbcc5e2c7c21073d89aa29",
        "build_date": "2021-09-16T03:05:29.143308416Z",
        "build_snapshot": false,
        "lucene_version": "8.9.0",
        "minimum_wire_compatibility_version": "6.8.0",
        "minimum_index_compatibility_version": "6.0.0-beta1"
      },
      "tagline": "You Know, for Search"
    }
    ```

3. Visit 'http://localhost:3000/products'.

## API Queries
Feel free to download the Postman collection and give it a try.

[Postman Collection](/postman_collection/)

### Searchkick Usage
https://github.com/ankane/searchkick
