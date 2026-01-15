# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about a bank account.
    class BankSection < Internal::Types::Model
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :account_number, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "accountNumber"
      field :account_type, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "accountType"
      field :bank_name, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "bankName"
      field :routing_number, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "routingNumber"
    end
  end
end
