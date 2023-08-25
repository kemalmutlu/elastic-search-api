Searchkick.client = Elasticsearch::Client.new(
  hosts: [
    {
      host: ENV['ELASTICSEARCH_URL'],
      port: ENV['ELASTICSEARCH_PORT'],
      user: ENV['ELASTICSEARCH_USERNAME'],
      password: ENV['ELASTICSEARCH_PASSWORD'],
      scheme: 'http'
    }
  ]
)
