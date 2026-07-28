# frozen_string_literal: true

module Payabli
  module Types
    # The outcome of automatic bank account verification.
    class BankVerificationMetadata < Internal::Types::Model
      field :verification_result, -> { Payabli::Types::VerificationCode }, optional: false, nullable: false, api_name: "verificationResult"

      field :account_response_code, -> { Payabli::Types::VerificationCode }, optional: false, nullable: true, api_name: "accountResponseCode"

      field :customer_response_code, -> { Payabli::Types::VerificationCode }, optional: false, nullable: true, api_name: "customerResponseCode"
    end
  end
end
