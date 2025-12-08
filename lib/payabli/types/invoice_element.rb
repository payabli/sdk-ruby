# frozen_string_literal: true

module Payabli
  module Types
    class InvoiceElement < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :invoice_link, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "invoiceLink"
      field :order, -> { Integer }, optional: true, nullable: false
      field :view_invoice_details, -> { Payabli::Types::LabelElement }, optional: true, nullable: false, api_name: "viewInvoiceDetails"
    end
  end
end
