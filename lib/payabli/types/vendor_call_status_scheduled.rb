# frozen_string_literal: true

module Payabli
  module Types
    # Details of a queued or in-progress outreach call.
    class VendorCallStatusScheduled < Internal::Types::Model
      field :scheduled_for, -> { String }, optional: true, nullable: false, api_name: "scheduledFor"

      field :attempts_remaining, -> { Integer }, optional: true, nullable: false, api_name: "attemptsRemaining"

      field :max_attempts, -> { Integer }, optional: true, nullable: false, api_name: "maxAttempts"
    end
  end
end
