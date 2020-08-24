# frozen_string_literal: true

module Carbonyte
  module Kafka
    # Custom JSON serializer.
    class JsonSerializer
      def call(content)
        return content if content.is_a?(String)

        if content.respond_to?(:to_json)
          res = {
            correlation_id: RequestStore.store[:correlation_id],
            data: content
          }
          return res.to_json
        end

        raise Karafka::Errors::SerializationError, content
      end
    end
  end
end
