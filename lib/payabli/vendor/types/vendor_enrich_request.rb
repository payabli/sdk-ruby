# frozen_string_literal: true

module Payabli
  module Vendor
    module Types
      # Request body for the vendor enrichment endpoint.
      class VendorEnrichRequest < Internal::Types::Model
        field :vendor_id, -> { Integer }, optional: false, nullable: false, api_name: "vendorId"
        field :scope, -> { Internal::Types::Array[String] }, optional: true, nullable: false
        field :apply_enrichment_data, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "applyEnrichmentData"
        field :schedule_call_if_needed, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "scheduleCallIfNeeded"
        field :invoice_file, -> { Payabli::Types::FileContent }, optional: true, nullable: false, api_name: "invoiceFile"
        field :bill_id, -> { Integer }, optional: true, nullable: false, api_name: "billId"
        field :fallback_method, -> { String }, optional: true, nullable: false, api_name: "fallbackMethod"
      end
    end
  end
end
