# frozen_string_literal: true

module Payabli
  module Types
    # Object containing information related to the card. This object is `null`
    # unless the payment method is card. If the payment method is Apple Pay, the
    # binData will be related to the DPAN (device primary account number), not
    # the card connected to Apple Pay.
    class BinData < Internal::Types::Model
      field :bin_matched_length, -> { String }, optional: true, nullable: false, api_name: "binMatchedLength"
      field :bin_card_brand, -> { String }, optional: true, nullable: false, api_name: "binCardBrand"
      field :bin_card_type, -> { String }, optional: true, nullable: false, api_name: "binCardType"
      field :bin_card_category, -> { String }, optional: true, nullable: false, api_name: "binCardCategory"
      field :bin_card_issuer, -> { String }, optional: true, nullable: false, api_name: "binCardIssuer"
      field :bin_card_issuer_country, -> { String }, optional: true, nullable: false, api_name: "binCardIssuerCountry"
      field :bin_card_issuer_country_code_a_2, -> { String }, optional: true, nullable: false, api_name: "binCardIssuerCountryCodeA2"
      field :bin_card_issuer_country_number, -> { String }, optional: true, nullable: false, api_name: "binCardIssuerCountryNumber"
      field :bin_card_is_regulated, -> { String }, optional: true, nullable: false, api_name: "binCardIsRegulated"
      field :bin_card_use_category, -> { String }, optional: true, nullable: false, api_name: "binCardUseCategory"
      field :bin_card_issuer_country_code_a_3, -> { String }, optional: true, nullable: false, api_name: "binCardIssuerCountryCodeA3"
    end
  end
end
