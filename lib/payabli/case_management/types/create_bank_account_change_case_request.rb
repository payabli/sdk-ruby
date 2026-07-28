# frozen_string_literal: true

module Payabli
  module CaseManagement
    module Types
      class CreateBankAccountChangeCaseRequest < Internal::Types::Model
        field :paypoint_id, -> { Integer }, optional: false, nullable: false, api_name: "paypointId"

        field :nickname, -> { String }, optional: false, nullable: false

        field :bank_name, -> { String }, optional: false, nullable: false, api_name: "bankName"

        field :routing_number, -> { String }, optional: false, nullable: false, api_name: "routingNumber"

        field :account_number, -> { String }, optional: false, nullable: false, api_name: "accountNumber"

        field :account_type, -> { String }, optional: false, nullable: false, api_name: "accountType"

        field :bank_account_holder_type, -> { String }, optional: false, nullable: false, api_name: "bankAccountHolderType"

        field :bank_account_function, -> { Payabli::Types::CaseManagementBankAccountFunction }, optional: false, nullable: false, api_name: "bankAccountFunction"

        field :services, -> { Payabli::Types::BankAccountServices }, optional: false, nullable: false

        field :default, -> { Internal::Types::Boolean }, optional: false, nullable: false

        field :schedule_for, -> { String }, optional: true, nullable: false, api_name: "scheduleFor"
      end
    end
  end
end
