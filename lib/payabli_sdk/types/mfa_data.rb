# frozen_string_literal: true

module PayabliSdk
  module Types
    class MfaData < Internal::Types::Model
      field :mfa, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :mfa_mode, -> { Integer }, optional: true, nullable: false, api_name: "mfaMode"
    end
  end
end
