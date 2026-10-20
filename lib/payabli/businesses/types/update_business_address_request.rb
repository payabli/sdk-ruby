# frozen_string_literal: true

module Payabli
  module Businesses
    module Types
      class UpdateBusinessAddressRequest < Internal::Types::Model
        field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

        field :business_address_reference, -> { String }, optional: false, nullable: false, api_name: "businessAddressReference"

        field :type, -> { Payabli::Types::AddressType }, optional: true, nullable: false

        field :location, -> { Payabli::Types::BusinessAddressLocation }, optional: true, nullable: false

        field :address_line_1, -> { String }, optional: true, nullable: false, api_name: "addressLine1"

        field :address_line_2, -> { String }, optional: true, nullable: false, api_name: "addressLine2"

        field :city_locality, -> { String }, optional: true, nullable: false, api_name: "cityLocality"

        field :state_province, -> { String }, optional: true, nullable: false, api_name: "stateProvince"

        field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

        field :country, -> { String }, optional: true, nullable: false

        field :floor, -> { String }, optional: true, nullable: false

        field :suite_apart_number, -> { String }, optional: true, nullable: false, api_name: "suiteApartNumber"
      end
    end
  end
end
