# frozen_string_literal: true

module Payabli
  module Types
    class MethodQueryRecords < Internal::Types::Model
      field :id_pmethod, -> { String }, optional: true, nullable: false, api_name: "IdPmethod"

      field :method_, -> { String }, optional: true, nullable: false, api_name: "Method"

      field :descriptor, -> { String }, optional: true, nullable: false, api_name: "Descriptor"

      field :masked_account, -> { String }, optional: true, nullable: false, api_name: "MaskedAccount"

      field :exp_date, -> { String }, optional: true, nullable: false, api_name: "ExpDate"

      field :holder_name, -> { String }, optional: true, nullable: false, api_name: "HolderName"

      field :ach_sec_code, -> { String }, optional: true, nullable: false, api_name: "AchSecCode"

      field :ach_holder_type, -> { String }, optional: true, nullable: false, api_name: "AchHolderType"

      field :is_validated_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "IsValidatedACH"

      field :bin, -> { String }, optional: true, nullable: false, api_name: "BIN"

      field :bin_data, -> { Payabli::Types::BinData }, optional: true, nullable: false, api_name: "binData"

      field :aba, -> { String }, optional: true, nullable: false, api_name: "ABA"

      field :postal_code, -> { String }, optional: true, nullable: false, api_name: "PostalCode"

      field :method_type, -> { String }, optional: true, nullable: false, api_name: "MethodType"

      field :wallet_type, -> { String }, optional: true, nullable: false, api_name: "WalletType"

      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "LastUpdated"

      field :card_updated_on, -> { String }, optional: true, nullable: false, api_name: "CardUpdatedOn"
    end
  end
end
