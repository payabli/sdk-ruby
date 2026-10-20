# frozen_string_literal: true

module Payabli
  module Paypoints
    module Types
      class UpdatePaypointRequest < Internal::Types::Model
        field :paypoint_reference, -> { String }, optional: false, nullable: false, api_name: "paypointReference"

        field :paypoint_type, -> { String }, optional: true, nullable: false, api_name: "paypointType"

        field :doing_business_as, -> { String }, optional: true, nullable: false, api_name: "doingBusinessAs"

        field :description, -> { String }, optional: true, nullable: false

        field :website, -> { String }, optional: true, nullable: false

        field :customer_service_phone, -> { String }, optional: true, nullable: false, api_name: "customerServicePhone"

        field :customer_service_email, -> { String }, optional: true, nullable: false, api_name: "customerServiceEmail"

        field :timezone, -> { String }, optional: true, nullable: false

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"
      end
    end
  end
end
