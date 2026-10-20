# frozen_string_literal: true

module Payabli
  module Types
    # The reference and initial status of a newly created paypoint.
    class PaypointCreatedResponse < Internal::Types::Model
      field :paypoint_reference, -> { String }, optional: false, nullable: false, api_name: "paypointReference"

      field :business_reference, -> { String }, optional: true, nullable: false, api_name: "businessReference"

      field :doing_business_as, -> { String }, optional: true, nullable: false, api_name: "doingBusinessAs"

      field :paypoint_status, -> { String }, optional: false, nullable: false, api_name: "paypointStatus"

      field :timezone, -> { String }, optional: true, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :links, -> { Payabli::Types::PaypointLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
