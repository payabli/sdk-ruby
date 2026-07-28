# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class ValidateBankAccountChangeRequest < Internal::Types::Model
        field :paypoint_id, -> { Integer }, optional: false, nullable: false, api_name: "paypointId"

        field :routing_number, -> { String }, optional: false, nullable: false, api_name: "routingNumber"

        field :account_number, -> { String }, optional: false, nullable: false, api_name: "accountNumber"

        field :account_type, -> { String }, optional: false, nullable: false, api_name: "accountType"

        field :bank_account_holder_type, -> { String }, optional: false, nullable: false, api_name: "bankAccountHolderType"

        field :bank_account_function, -> { Payabli::Types::CaseManagementBankAccountFunction }, optional: false, nullable: false, api_name: "bankAccountFunction"

        field :services, -> { Payabli::Types::BankAccountServices }, optional: false, nullable: false
      end
    end
  end
end
