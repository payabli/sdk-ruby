# frozen_string_literal: true

module Payabli
  module Types
    # The reference and initial status of a newly created business.
    class BusinessCreatedResponse < Internal::Types::Model
      field :business_uuid, -> { String }, optional: false, nullable: false, api_name: "businessUuid"

      field :business_status, -> { String }, optional: false, nullable: false, api_name: "businessStatus"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :links, -> { Payabli::Types::BusinessLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
