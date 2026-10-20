# frozen_string_literal: true

module Payabli
  module Types
    # The result of removing a business address.
    class BusinessAddressDeletedResponse < Internal::Types::Model
      field :links, -> { Payabli::Types::BusinessLinks }, optional: false, nullable: false, api_name: "_links"

      field :business_uuid, -> { String }, optional: false, nullable: false, api_name: "businessUuid"

      field :business_address_reference, -> { String }, optional: false, nullable: false, api_name: "businessAddressReference"

      field :deleted_at, -> { String }, optional: false, nullable: false, api_name: "deletedAt"
    end
  end
end
