# frozen_string_literal: true

module Payabli
  module Types
    # Scheduled call details.
    class VendorScheduleCallResponseData < Internal::Types::Model
      field :call_schedule_id, -> { Integer }, optional: true, nullable: false, api_name: "callScheduleId"

      field :enrichment_id, -> { String }, optional: true, nullable: false, api_name: "enrichmentId"

      field :scheduled_call_date, -> { String }, optional: true, nullable: false, api_name: "scheduledCallDate"

      field :status, -> { String }, optional: true, nullable: false
    end
  end
end
