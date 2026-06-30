# frozen_string_literal: true

module Payabli
  module Types
    # Details of an outreach call that didn't complete successfully.
    class VendorCallStatusFailed < Internal::Types::Model
      field :last_attempt_at, -> { String }, optional: true, nullable: false, api_name: "lastAttemptAt"

      field :reason, -> { String }, optional: true, nullable: false

      field :attempts_remaining, -> { Integer }, optional: true, nullable: false, api_name: "attemptsRemaining"

      field :max_attempts, -> { Integer }, optional: true, nullable: false, api_name: "maxAttempts"

      field :next_retry_scheduled_for, -> { String }, optional: true, nullable: false, api_name: "nextRetryScheduledFor"
    end
  end
end
