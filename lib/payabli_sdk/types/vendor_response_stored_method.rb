# frozen_string_literal: true

module PayabliSdk
  module Types
    # Stored payment method information
    class VendorResponseStoredMethod < Internal::Types::Model
      field :id_pmethod, -> { String }, optional: false, nullable: true, api_name: "IdPmethod"
      field :method_, -> { String }, optional: false, nullable: true, api_name: "Method"
      field :descriptor, -> { String }, optional: false, nullable: true, api_name: "Descriptor"
      field :masked_account, -> { String }, optional: false, nullable: true, api_name: "MaskedAccount"
      field :exp_date, -> { String }, optional: false, nullable: true, api_name: "ExpDate"
      field :holder_name, -> { String }, optional: false, nullable: true, api_name: "HolderName"
      field :ach_sec_code, -> { String }, optional: false, nullable: true, api_name: "AchSecCode"
      field :ach_holder_type, -> { String }, optional: false, nullable: true, api_name: "AchHolderType"
      field :is_validated_ach, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "IsValidatedACH"
      field :bin, -> { String }, optional: false, nullable: true, api_name: "BIN"
      field :bin_data, -> { String }, optional: false, nullable: true, api_name: "binData"
      field :aba, -> { String }, optional: false, nullable: true, api_name: "ABA"
      field :postal_code, -> { String }, optional: false, nullable: true, api_name: "PostalCode"
      field :method_type, -> { String }, optional: false, nullable: true, api_name: "MethodType"
      field :last_updated, -> { String }, optional: false, nullable: true, api_name: "LastUpdated"
      field :card_updated_on, -> { String }, optional: false, nullable: true, api_name: "CardUpdatedOn"
    end
  end
end
