# frozen_string_literal: true

module Carbonyte
  module Kafka
    # This is the base app to use in Carbonyte microservices
    class App < Karafka::App
      setup do |config|
        config.backend = :inline
        config.batch_consuming = false
        config.serializer = JsonSerializer
        config.deserializer = JsonDeserializer
      end
    end
  end
end
