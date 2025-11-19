# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class GetMethodResponseResponseData < Internal::Types::Model
        field :aba, -> { String }, optional: true, nullable: false
        field :ach_holder_type, lambda {
          Payabli::Types::AchHolderType
        }, optional: true, nullable: false, api_name: "achHolderType"
        field :ach_sec_code, -> { String }, optional: true, nullable: false, api_name: "achSecCode"
        field :bin, -> { String }, optional: true, nullable: false
        field :bin_data, -> { Payabli::Types::BinData }, optional: true, nullable: false, api_name: "binData"
        field :customers, lambda {
          Internal::Types::Array[Payabli::TokenStorage::Types::GetMethodResponseResponseDataCustomersItem]
        }, optional: true, nullable: false
        field :descriptor, -> { String }, optional: true, nullable: false
        field :exp_date, -> { String }, optional: true, nullable: false, api_name: "expDate"
        field :holder_name, -> { String }, optional: true, nullable: false, api_name: "holderName"
        field :id_pmethod, -> { String }, optional: true, nullable: false, api_name: "idPmethod"
        field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
        field :masked_account, -> { String }, optional: true, nullable: false, api_name: "maskedAccount"
        field :method_, -> { String }, optional: true, nullable: false, api_name: "method"
        field :method_type, -> { String }, optional: true, nullable: false, api_name: "methodType"
        field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"
      end
    end
  end
end
