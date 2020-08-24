# frozen_string_literal: true

module Carbonyte
  module Kafka
    # The Consumer class from which all consumers should inherit.
    # It will automatically load and clear the correlation_id from the RequestStore
    # @see Karafka::BaseConsumer
    class Consumer < Karafka::BaseConsumer
      def call
        super
      ensure
        RequestStore.clear!
      end
    end
  end
end

Karafka::Serialization::Json::Serializer
