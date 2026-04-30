# frozen_string_literal: true

module Payabli
  module Management
    module Types
      class VerifyAccountDetailsRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :routing_number, -> { String }, optional: false, nullable: false, api_name: "routingNumber"
        field :account_number, -> { String }, optional: false, nullable: false, api_name: "accountNumber"
        field :account_type, -> { String }, optional: true, nullable: false, api_name: "accountType"
        field :country, -> { String }, optional: true, nullable: false
        field :account_holder_type, -> { String }, optional: true, nullable: false, api_name: "accountHolderType"
        field :holder_name, -> { String }, optional: true, nullable: false, api_name: "holderName"
      end
    end
  end
end
