# frozen_string_literal: true

module PayabliSdk
  module Paypoint
    module Types
      class NotificationRequest < Internal::Types::Model
        field :notification_url, -> { String }, optional: false, nullable: false, api_name: "notificationUrl"
        field :web_header_parameters, -> { Internal::Types::Array[PayabliSdk::Paypoint::Types::WebHeaderParameter] }, optional: true, nullable: false, api_name: "webHeaderParameters"
      end
    end
  end
end
