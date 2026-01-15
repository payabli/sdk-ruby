# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayabliApiResponseMfaBasic < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :mfa, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :mfa_mode, -> { String }, optional: true, nullable: false, api_name: "mfaMode"
      field :mfa_validation_code, -> { String }, optional: true, nullable: false, api_name: "mfaValidationCode"
      field :response_data, -> { String }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
