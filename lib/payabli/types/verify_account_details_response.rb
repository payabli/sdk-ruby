# frozen_string_literal: true

module Payabli
  module Types
    # Response wrapper for the bank account verification details endpoint.
    class VerifyAccountDetailsResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

      field :response_data, -> { Payabli::Types::BankAccountVerificationDetailsResponse }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
