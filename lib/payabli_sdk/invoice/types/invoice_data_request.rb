# frozen_string_literal: true

module PayabliSdk
  module Invoice
    module Types
      class InvoiceDataRequest < Internal::Types::Model
        field :customer_data, -> { PayabliSdk::Types::PayorDataRequest }, optional: true, nullable: false, api_name: "customerData"
        field :invoice_data, -> { PayabliSdk::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
        field :scheduled_options, -> { PayabliSdk::Types::BillOptions }, optional: true, nullable: false, api_name: "scheduledOptions"
      end
    end
  end
end
