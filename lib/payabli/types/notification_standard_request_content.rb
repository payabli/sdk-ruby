# frozen_string_literal: true

module Payabli
  module Types
    class NotificationStandardRequestContent < Internal::Types::Model
      field :event_type, -> { Payabli::Types::NotificationStandardRequestContentEventType }, optional: true, nullable: false, api_name: "eventType"
      field :internal_data, -> { Internal::Types::Array[Payabli::Types::KeyValueDuo] }, optional: true, nullable: false, api_name: "internalData"
      field :transaction_id, -> { String }, optional: true, nullable: false, api_name: "transactionId"
      field :web_header_parameters, -> { Internal::Types::Array[Payabli::Types::KeyValueDuo] }, optional: true, nullable: false, api_name: "webHeaderParameters"
    end
  end
end
