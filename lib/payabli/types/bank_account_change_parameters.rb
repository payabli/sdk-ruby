# frozen_string_literal: true

module Payabli
  module Types
    # The bank-account-change details stored on a case. The raw account and
    # routing numbers are write-only and never appear here — only a vault token
    # (`bankToken`) and non-sensitive details.
    class BankAccountChangeParameters < Internal::Types::Model
      field :type, -> { Payabli::Types::BankAccountChangeParametersType }, optional: false, nullable: false

      field :nickname, -> { String }, optional: false, nullable: false

      field :bank_name, -> { String }, optional: false, nullable: false, api_name: "bankName"

      field :bank_token, -> { String }, optional: false, nullable: false, api_name: "bankToken"

      field :account_type, -> { String }, optional: false, nullable: false, api_name: "accountType"

      field :bank_account_holder_name, -> { String }, optional: false, nullable: false, api_name: "bankAccountHolderName"

      field :bank_account_holder_type, -> { String }, optional: false, nullable: false, api_name: "bankAccountHolderType"

      field :bank_account_function, -> { Payabli::Types::CaseManagementBankAccountFunction }, optional: false, nullable: false, api_name: "bankAccountFunction"

      field :services, -> { Payabli::Types::BankAccountServices }, optional: false, nullable: false

      field :default, -> { Internal::Types::Boolean }, optional: false, nullable: false
    end
  end
end
