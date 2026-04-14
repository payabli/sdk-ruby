# frozen_string_literal: true

module Payabli
  module Vendor
    module Types
      # Enrichment result details.
      class VendorEnrichResponseData < Internal::Types::Model
        field :enrichment_id, -> { String }, optional: true, nullable: false, api_name: "enrichmentId"
        field :status, -> { String }, optional: true, nullable: false
        field :stages_triggered, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "stagesTriggered"
        field :vendor_payout_ready, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "vendorPayoutReady"
        field :enrichment_data, -> { Payabli::Vendor::Types::VendorEnrichmentData }, optional: true, nullable: false, api_name: "enrichmentData"
      end
    end
  end
end
