# frozen_string_literal: true

module Carbonyte
  module Kafka
    # Custom JSON deserializer.
    class JsonDeserializer < Karafka::Serialization::Json::Deserializer
      def call(params)
        payload = super
        RequestStore.store[:correlation_id] = payload['correlation_id']
        payload['data']
      end
    end
  end
end
