# frozen_string_literal: true

module Payabli
  module Types
    # A single billing profile as it appears in the list.
    class BillingProfileRecord < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :version_id, -> { Integer }, optional: false, nullable: false, api_name: "versionId"

      field :version_number, -> { Integer }, optional: false, nullable: false, api_name: "versionNumber"

      field :business, -> { Payabli::Types::BillingEntityNamed }, optional: false, nullable: false

      field :service_vertical, -> { Payabli::Types::ServiceVerticalName }, optional: false, nullable: false, api_name: "serviceVertical"

      field :name, -> { String }, optional: false, nullable: false

      field :fee_type, -> { Payabli::Types::FeeTypeName }, optional: false, nullable: false, api_name: "feeType"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :entities_assigned, -> { Payabli::Types::EntitiesAssigned }, optional: false, nullable: false, api_name: "entitiesAssigned"

      field :parent_id, -> { String }, optional: false, nullable: false, api_name: "parentId"

      field :count_of_events, -> { Integer }, optional: false, nullable: false, api_name: "countOfEvents"
    end
  end
end
