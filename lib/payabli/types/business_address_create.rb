# frozen_string_literal: true

module Payabli
  module Types
    # An address sent when creating a business. `country` is required.
    class BusinessAddressCreate < Internal::Types::Model
      field :country, -> { String }, optional: false, nullable: false

      field :type, -> { Payabli::Types::AddressType }, optional: true, nullable: false

      field :location, -> { Payabli::Types::BusinessAddressLocation }, optional: true, nullable: false

      field :address_line_1, -> { String }, optional: true, nullable: false, api_name: "addressLine1"

      field :address_line_2, -> { String }, optional: true, nullable: false, api_name: "addressLine2"

      field :city_locality, -> { String }, optional: true, nullable: false, api_name: "cityLocality"

      field :state_province, -> { String }, optional: true, nullable: false, api_name: "stateProvince"

      field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

      field :floor, -> { String }, optional: true, nullable: false

      field :suite_apart_number, -> { String }, optional: true, nullable: false, api_name: "suiteApartNumber"
    end
  end
end
