# frozen_string_literal: true

module Payabli
  module User
    module Types
      class MfaValidationData < Internal::Types::Model
        field :mfa_code, -> { String }, optional: true, nullable: false, api_name: "mfaCode"
        field :mfa_validation_code, -> { String }, optional: true, nullable: false, api_name: "mfaValidationCode"
      end
    end
  end
end
