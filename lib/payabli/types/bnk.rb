# frozen_string_literal: true

module Payabli
  module Types
    class Bnk < Internal::Types::Model
      field :account_number, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "accountNumber"
      field :bank_name, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "bankName"
      field :routing_account, lambda {
        Payabli::Types::LinkData
      }, optional: true, nullable: false, api_name: "routingAccount"
      field :type_account, -> { Payabli::Types::LinkData }, optional: true, nullable: false, api_name: "typeAccount"
    end
  end
end
