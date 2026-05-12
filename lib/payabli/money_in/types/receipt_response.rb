# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Response for SendReceipt endpoint.
      class ReceiptResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
        field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
