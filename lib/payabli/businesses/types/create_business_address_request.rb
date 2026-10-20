# frozen_string_literal: true

module Payabli
  module Businesses
    module Types
      class CreateBusinessAddressRequest < Internal::Types::Model
        field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

        field :type, -> { Payabli::Types::AddressType }, optional: false, nullable: false

        field :location, -> { Payabli::Types::BusinessAddressLocation }, optional: true, nullable: false

        field :address_line_1, -> { String }, optional: false, nullable: false, api_name: "addressLine1"

        field :address_line_2, -> { String }, optional: true, nullable: false, api_name: "addressLine2"

        field :city_locality, -> { String }, optional: false, nullable: false, api_name: "cityLocality"

        field :state_province, -> { String }, optional: false, nullable: false, api_name: "stateProvince"

        field :postal_code, -> { String }, optional: false, nullable: false, api_name: "postalCode"

        field :country, -> { String }, optional: false, nullable: false

        field :floor, -> { String }, optional: true, nullable: false

        field :suite_apart_number, -> { String }, optional: true, nullable: false, api_name: "suiteApartNumber"
      end
    end
  end
end
