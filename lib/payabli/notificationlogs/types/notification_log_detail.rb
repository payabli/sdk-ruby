# frozen_string_literal: true

module Payabli
  module Notificationlogs
    module Types
      class NotificationLogDetail < Internal::Types::Model
        field :web_headers, lambda {
          Internal::Types::Array[Payabli::Notificationlogs::Types::StringStringKeyValuePair]
        }, optional: true, nullable: false, api_name: "webHeaders"
        field :response_headers, lambda {
          Internal::Types::Array[Payabli::Notificationlogs::Types::KeyValueArray]
        }, optional: true, nullable: false, api_name: "responseHeaders"
        field :response_content, -> { String }, optional: true, nullable: false, api_name: "responseContent"
      end
    end
  end
end
