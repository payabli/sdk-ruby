# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class OcrVendorBillingData < Internal::Types::Model
        field :id, -> { Integer }, optional: true, nullable: false
        field :bank_name, -> { String }, optional: true, nullable: false, api_name: "bankName"
        field :routing_account, -> { String }, optional: true, nullable: false, api_name: "routingAccount"
        field :account_number, -> { String }, optional: true, nullable: false, api_name: "accountNumber"
        field :type_account, -> { String }, optional: true, nullable: false, api_name: "typeAccount"
        field :bank_account_holder_name, lambda {
          String
        }, optional: true, nullable: false, api_name: "bankAccountHolderName"
        field :bank_account_holder_type, lambda {
          String
        }, optional: true, nullable: false, api_name: "bankAccountHolderType"
        field :bank_account_function, -> { Integer }, optional: true, nullable: false, api_name: "bankAccountFunction"
      end
    end
  end
end
