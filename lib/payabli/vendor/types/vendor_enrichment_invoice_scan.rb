# frozen_string_literal: true

module Payabli
  module Vendor
    module Types
      # Vendor contact information and payment acceptance info extracted from an invoice.
      class VendorEnrichmentInvoiceScan < Internal::Types::Model
        field :vendor_name, -> { String }, optional: true, nullable: false, api_name: "vendorName"

        field :street, -> { String }, optional: true, nullable: false

        field :city, -> { String }, optional: true, nullable: false

        field :state, -> { String }, optional: true, nullable: false

        field :zip_code, -> { String }, optional: true, nullable: false, api_name: "zipCode"

        field :country, -> { String }, optional: true, nullable: false

        field :phone, -> { String }, optional: true, nullable: false

        field :email, -> { String }, optional: true, nullable: false

        field :payment_link, -> { String }, optional: true, nullable: false, api_name: "paymentLink"

        field :card_accepted, -> { String }, optional: true, nullable: false, api_name: "cardAccepted"

        field :ach_accepted, -> { String }, optional: true, nullable: false, api_name: "achAccepted"

        field :check_accepted, -> { String }, optional: true, nullable: false, api_name: "checkAccepted"

        field :invoice_number, -> { String }, optional: true, nullable: false, api_name: "invoiceNumber"

        field :amount_due, -> { Integer }, optional: true, nullable: false, api_name: "amountDue"

        field :due_date, -> { String }, optional: true, nullable: false, api_name: "dueDate"
      end
    end
  end
end
