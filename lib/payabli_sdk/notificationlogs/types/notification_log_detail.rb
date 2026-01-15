# frozen_string_literal: true

module PayabliSdk
  module Notificationlogs
    module Types
      class NotificationLogDetail < Internal::Types::Model
        field :web_headers, -> { Internal::Types::Array[PayabliSdk::Notificationlogs::Types::StringStringKeyValuePair] }, optional: true, nullable: false, api_name: "webHeaders"
        field :response_headers, -> { Internal::Types::Array[PayabliSdk::Notificationlogs::Types::KeyValueArray] }, optional: true, nullable: false, api_name: "responseHeaders"
        field :response_content, -> { String }, optional: true, nullable: false, api_name: "responseContent"
      end
    end
  end
end
