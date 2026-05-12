# frozen_string_literal: true

module Payabli
  module Types
    # Details about a bank account.
    class BankSection < Internal::Types::Model
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :account_number, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "accountNumber"
      field :account_type, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "accountType"
      field :bank_name, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "bankName"
      field :routing_number, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "routingNumber"
    end
  end
end
