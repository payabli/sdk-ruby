# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class GetMethodResponseResponseData < Internal::Types::Model
        field :aba, -> { String }, optional: true, nullable: false
        field :ach_holder_type, -> { PayabliSdk::Types::AchHolderType }, optional: true, nullable: false, api_name: "achHolderType"
        field :ach_sec_code, -> { String }, optional: true, nullable: false, api_name: "achSecCode"
        field :bin, -> { String }, optional: true, nullable: false
        field :bin_data, -> { PayabliSdk::Types::BinData }, optional: true, nullable: false, api_name: "binData"
        field :card_updated_on, -> { String }, optional: true, nullable: false, api_name: "cardUpdatedOn"
        field :customers, -> { Internal::Types::Array[PayabliSdk::TokenStorage::Types::GetMethodResponseResponseDataCustomersItem] }, optional: true, nullable: false
        field :descriptor, -> { String }, optional: true, nullable: false
        field :exp_date, -> { String }, optional: true, nullable: false, api_name: "expDate"
        field :holder_name, -> { String }, optional: true, nullable: false, api_name: "holderName"
        field :id_pmethod, -> { String }, optional: true, nullable: false, api_name: "idPmethod"
        field :is_validated_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isValidatedACH"
        field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
        field :masked_account, -> { String }, optional: true, nullable: false, api_name: "maskedAccount"
        field :method_, -> { String }, optional: true, nullable: false, api_name: "method"
        field :method_type, -> { String }, optional: true, nullable: false, api_name: "methodType"
        field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"
        field :vendors, -> { Internal::Types::Array[PayabliSdk::TokenStorage::Types::GetMethodResponseResponseDataVendorsItem] }, optional: true, nullable: false
      end
    end
  end
end
