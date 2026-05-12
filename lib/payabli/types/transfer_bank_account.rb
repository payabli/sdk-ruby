# frozen_string_literal: true

module Payabli
  module Types
    class TransferBankAccount < Internal::Types::Model
      field :account_number, -> { String }, optional: false, nullable: false, api_name: "accountNumber"
      field :routing_number, -> { String }, optional: false, nullable: false, api_name: "routingNumber"
      field :bank_name, -> { String }, optional: false, nullable: false, api_name: "bankName"
    end
  end
end
