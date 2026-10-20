# frozen_string_literal: true

module Payabli
  module Types
    # A business as it appears in a list response.
    class BusinessSummaryResponse < Internal::Types::Model
      field :business_uuid, -> { String }, optional: false, nullable: false, api_name: "businessUuid"

      field :legal_name, -> { String }, optional: false, nullable: true, api_name: "legalName"

      field :business_status, -> { String }, optional: false, nullable: false, api_name: "businessStatus"

      field :parent_reference, -> { String }, optional: false, nullable: true, api_name: "parentReference"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :links, -> { Payabli::Types::BusinessLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
