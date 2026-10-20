# frozen_string_literal: true

module Payabli
  module Types
    # The progress of setting up an approved application's services with their processors.
    class EnablementResult < Internal::Types::Model
      field :requests_reference, -> { String }, optional: false, nullable: false, api_name: "requestsReference"

      field :state, -> { String }, optional: false, nullable: true

      field :services, -> { Internal::Types::Array[Payabli::Types::EnablementService] }, optional: false, nullable: false

      field :blocked_on, -> { String }, optional: false, nullable: true, api_name: "blockedOn"

      field :message, -> { String }, optional: false, nullable: true

      field :attempts, -> { Integer }, optional: false, nullable: true

      field :first_attempt_at, -> { String }, optional: false, nullable: true, api_name: "firstAttemptAt"

      field :last_attempt_at, -> { String }, optional: false, nullable: true, api_name: "lastAttemptAt"
    end
  end
end
