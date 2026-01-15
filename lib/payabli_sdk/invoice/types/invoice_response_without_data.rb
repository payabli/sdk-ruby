# frozen_string_literal: true

module PayabliSdk
  module Invoice
    module Types
      # Response schema for invoice operations.
      class InvoiceResponseWithoutData < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_code, -> { Integer }, optional: false, nullable: false, api_name: "responseCode"
        field :response_data, -> { PayabliSdk::Types::Responsedatanonobject }, optional: false, nullable: false, api_name: "responseData"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :pageidentifier, -> { String }, optional: false, nullable: true
        field :room_id, -> { Integer }, optional: false, nullable: false, api_name: "roomId"
      end
    end
  end
end
