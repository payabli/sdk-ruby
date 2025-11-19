# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class SendInvoiceResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
