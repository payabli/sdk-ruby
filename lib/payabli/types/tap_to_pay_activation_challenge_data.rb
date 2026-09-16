# frozen_string_literal: true

module Payabli
  module Types
    # The issued activation code, its expiration, and whether it was reused.
    class TapToPayActivationChallengeData < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"

      field :already_issued, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "alreadyIssued"
    end
  end
end
