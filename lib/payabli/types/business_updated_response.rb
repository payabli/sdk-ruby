# frozen_string_literal: true

module Payabli
  module Types
    # The reference and updated timestamp after a business update.
    class BusinessUpdatedResponse < Internal::Types::Model
      field :business_uuid, -> { String }, optional: false, nullable: false, api_name: "businessUuid"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :links, -> { Payabli::Types::BusinessLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
