# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Bank account information for an outbound transfer.
      class TransferOutBankAccount < Internal::Types::Model
        field :account_number, -> { String }, optional: false, nullable: true, api_name: "accountNumber"
        field :routing_number, -> { String }, optional: false, nullable: true, api_name: "routingNumber"
        field :bank_name, -> { String }, optional: false, nullable: true, api_name: "bankName"
      end
    end
  end
end
