# frozen_string_literal: true

module Payabli
  module Types
    # A business address, returned by the address endpoints.
    class BusinessAddressResponse < Internal::Types::Model
      field :links, -> { Payabli::Types::BusinessAddressLinks }, optional: false, nullable: false, api_name: "_links"

      field :business_address_reference, -> { String }, optional: false, nullable: false, api_name: "businessAddressReference"

      field :type, -> { Payabli::Types::AddressType }, optional: false, nullable: false

      field :location, -> { Payabli::Types::BusinessAddressLocation }, optional: false, nullable: false

      field :address_line_1, -> { String }, optional: false, nullable: false, api_name: "addressLine1"

      field :address_line_2, -> { String }, optional: false, nullable: true, api_name: "addressLine2"

      field :city_locality, -> { String }, optional: false, nullable: false, api_name: "cityLocality"

      field :state_province, -> { String }, optional: false, nullable: false, api_name: "stateProvince"

      field :postal_code, -> { String }, optional: false, nullable: false, api_name: "postalCode"

      field :country, -> { String }, optional: false, nullable: false

      field :floor, -> { String }, optional: false, nullable: true

      field :suite_apart_number, -> { String }, optional: false, nullable: true, api_name: "suiteApartNumber"
    end
  end
end
