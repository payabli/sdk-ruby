# frozen_string_literal: true

module Payabli
  module Types
    # The result of deactivating a business.
    class BusinessDeactivatedResponse < Internal::Types::Model
      field :business_uuid, -> { String }, optional: false, nullable: false, api_name: "businessUuid"

      field :business_status, -> { String }, optional: false, nullable: false, api_name: "businessStatus"

      field :deactivated_at, -> { String }, optional: false, nullable: false, api_name: "deactivatedAt"

      field :reason, -> { String }, optional: false, nullable: true

      field :links, -> { Payabli::Types::BusinessLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
