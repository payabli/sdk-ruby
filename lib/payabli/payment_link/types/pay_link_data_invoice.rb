# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      class PayLinkDataInvoice < Internal::Types::Model
        field :id_invoice, -> { Integer }, optional: false, nullable: false, api_name: "idInvoice"
        field :amount_fixed, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "amountFixed"
        field :mail_2, -> { String }, optional: true, nullable: false, api_name: "mail2"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::PaymentLink::Types::PaymentPageRequestBody }, optional: false, nullable: false
      end
    end
  end
end
