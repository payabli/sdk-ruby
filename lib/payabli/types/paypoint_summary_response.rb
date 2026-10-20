# frozen_string_literal: true

module Payabli
  module Types
    # A paypoint as it appears in a list response.
    class PaypointSummaryResponse < Internal::Types::Model
      field :paypoint_reference, -> { String }, optional: false, nullable: false, api_name: "paypointReference"

      field :business_reference, -> { String }, optional: true, nullable: false, api_name: "businessReference"

      field :parent_paypoint_reference, -> { String }, optional: false, nullable: false, api_name: "parentPaypointReference"

      field :paypoint_type, -> { String }, optional: true, nullable: false, api_name: "paypointType"

      field :paypoint_status, -> { String }, optional: false, nullable: false, api_name: "paypointStatus"

      field :doing_business_as, -> { String }, optional: true, nullable: false, api_name: "doingBusinessAs"

      field :description, -> { String }, optional: true, nullable: false

      field :website, -> { String }, optional: true, nullable: false

      field :timezone, -> { String }, optional: true, nullable: false

      field :customer_service_phone, -> { String }, optional: true, nullable: false, api_name: "customerServicePhone"

      field :customer_service_email, -> { String }, optional: true, nullable: false, api_name: "customerServiceEmail"

      field :entry_name, -> { String }, optional: false, nullable: false, api_name: "entryName"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: false, api_name: "updatedAt"

      field :links, -> { Payabli::Types::PaypointLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
