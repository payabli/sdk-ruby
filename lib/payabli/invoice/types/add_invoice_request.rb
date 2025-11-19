# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class AddInvoiceRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :force_customer_creation, lambda {
          Internal::Types::Boolean
        }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::Invoice::Types::InvoiceDataRequest }, optional: false, nullable: false
      end
    end
  end
end
