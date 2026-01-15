# frozen_string_literal: true

module PayabliSdk
  module Types
    class Bnk < Internal::Types::Model
      field :account_number, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "accountNumber"
      field :bank_name, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "bankName"
      field :routing_account, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "routingAccount"
      field :type_account, -> { PayabliSdk::Types::LinkData }, optional: true, nullable: false, api_name: "typeAccount"
    end
  end
end
