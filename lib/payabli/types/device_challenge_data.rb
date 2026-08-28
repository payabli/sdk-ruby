# frozen_string_literal: true

module Payabli
  module Types
    # The issued activation code and the time it expires.
    class DeviceChallengeData < Internal::Types::Model
      field :code, -> { String }, optional: false, nullable: false

      field :expires_at, -> { String }, optional: false, nullable: false, api_name: "expiresAt"
    end
  end
end
