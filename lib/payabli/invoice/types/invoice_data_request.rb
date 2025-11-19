# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class InvoiceDataRequest < Internal::Types::Model
        field :customer_data, lambda {
          Payabli::Types::PayorDataRequest
        }, optional: true, nullable: false, api_name: "customerData"
        field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
        field :scheduled_options, lambda {
          Payabli::Types::BillOptions
        }, optional: true, nullable: false, api_name: "scheduledOptions"
      end
    end
  end
end
