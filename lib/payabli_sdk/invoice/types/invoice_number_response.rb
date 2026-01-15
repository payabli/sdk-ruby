# frozen_string_literal: true

module PayabliSdk
  module Invoice
    module Types
      # Response schema for operations for sending invoices or getting next invoice number.
      class InvoiceNumberResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :response_data, -> { String }, optional: false, nullable: false, api_name: "responseData"
      end
    end
  end
end
