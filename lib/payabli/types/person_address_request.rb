# frozen_string_literal: true

module Payabli
  module Types
    # An address included in a person request.
    class PersonAddressRequest < Internal::Types::Model
      field :address_line_1, -> { String }, optional: true, nullable: false, api_name: "addressLine1"

      field :address_line_2, -> { String }, optional: true, nullable: false, api_name: "addressLine2"

      field :city_locality, -> { String }, optional: true, nullable: false, api_name: "cityLocality"

      field :state_province, -> { String }, optional: true, nullable: false, api_name: "stateProvince"

      field :postal_code, -> { String }, optional: true, nullable: false, api_name: "postalCode"

      field :country, -> { String }, optional: true, nullable: false

      field :type, -> { Payabli::Types::PersonAddressType }, optional: true, nullable: false
    end
  end
end
