# frozen_string_literal: true

module Payabli
  module Vendor
    module Types
      class ScheduleEnrichmentCallRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false

        field :vendor_id, -> { Integer }, optional: false, nullable: false, api_name: "vendorId"

        field :phone, -> { String }, optional: true, nullable: false

        field :enrichment_id, -> { String }, optional: true, nullable: false, api_name: "enrichmentId"

        field :bill_id, -> { Integer }, optional: true, nullable: false, api_name: "billId"

        field :fallback_method, -> { String }, optional: true, nullable: false, api_name: "fallbackMethod"

        field :max_retries, -> { Integer }, optional: true, nullable: false, api_name: "maxRetries"

        field :timezone, -> { String }, optional: true, nullable: false

        field :send_now, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sendNow"
      end
    end
  end
end
