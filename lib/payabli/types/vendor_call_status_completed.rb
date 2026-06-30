# frozen_string_literal: true

module Payabli
  module Types
    # Details of a completed outreach call that returned data.
    class VendorCallStatusCompleted < Internal::Types::Model
      field :completed_at, -> { String }, optional: true, nullable: false, api_name: "completedAt"

      field :duration_seconds, -> { Integer }, optional: true, nullable: false, api_name: "durationSeconds"

      field :summary, -> { String }, optional: true, nullable: false

      field :call_id, -> { String }, optional: true, nullable: false, api_name: "callId"

      field :transcript, -> { String }, optional: true, nullable: false

      field :extracted_data, -> { Payabli::Types::VendorCallStatusExtractedData }, optional: true, nullable: false, api_name: "extractedData"
    end
  end
end
