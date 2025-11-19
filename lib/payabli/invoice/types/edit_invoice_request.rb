# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class EditInvoiceRequest < Internal::Types::Model
        field :id_invoice, -> { Integer }, optional: false, nullable: false, api_name: "idInvoice"
        field :force_customer_creation, lambda {
          Internal::Types::Boolean
        }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :body, -> { Payabli::Invoice::Types::InvoiceDataRequest }, optional: false, nullable: false
      end
    end
  end
end
