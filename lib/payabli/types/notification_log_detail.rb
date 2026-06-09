# frozen_string_literal: true

module Payabli
  module Types
    class NotificationLogDetail < Internal::Types::Model
      field :web_headers, -> { Internal::Types::Array[Payabli::Types::StringStringKeyValuePair] }, optional: true, nullable: false, api_name: "webHeaders"

      field :response_headers, -> { Internal::Types::Array[Payabli::Types::KeyValueArray] }, optional: true, nullable: false, api_name: "responseHeaders"

      field :response_content, -> { String }, optional: true, nullable: false, api_name: "responseContent"
    end
  end
end
