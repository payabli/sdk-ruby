# frozen_string_literal: true

module Payabli
  module Management
    module Types
      # Detailed bank account verification results from the verification network.
      class BankAccountVerificationDetailsResponse < Internal::Types::Model
        field :aba, -> { String }, optional: true, nullable: false

        field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"

        field :is_valid, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isValid"

        field :error_message, -> { String }, optional: true, nullable: false, api_name: "errorMessage"

        field :verification_response, -> { String }, optional: true, nullable: false, api_name: "verificationResponse"

        field :response_code, -> { String }, optional: true, nullable: false, api_name: "responseCode"

        field :response_value, -> { String }, optional: true, nullable: false, api_name: "responseValue"

        field :response_description, -> { String }, optional: true, nullable: false, api_name: "responseDescription"

        field :bank_name, -> { String }, optional: true, nullable: false, api_name: "bankName"

        field :reported_account_type, -> { String }, optional: true, nullable: false, api_name: "reportedAccountType"

        field :account_added_date, -> { String }, optional: true, nullable: false, api_name: "accountAddedDate"

        field :account_last_updated_date, -> { String }, optional: true, nullable: false, api_name: "accountLastUpdatedDate"

        field :account_closed_date, -> { String }, optional: true, nullable: false, api_name: "accountClosedDate"
      end
    end
  end
end
