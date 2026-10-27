# frozen_string_literal: true

module Payabli
  module Types
    # All fields accepted when creating an organization. Provide exactly one of `business` or `businessReference`.
    class CreateOrganizationAllFields < Internal::Types::Model
      field :parent_paypoint_reference, -> { String }, optional: true, nullable: false, api_name: "parentPaypointReference"

      field :doing_business_as, -> { String }, optional: false, nullable: false, api_name: "doingBusinessAs"

      field :description, -> { String }, optional: true, nullable: false

      field :website, -> { String }, optional: true, nullable: false

      field :customer_service_phone, -> { String }, optional: true, nullable: false, api_name: "customerServicePhone"

      field :customer_service_email, -> { String }, optional: true, nullable: false, api_name: "customerServiceEmail"

      field :timezone, -> { String }, optional: true, nullable: false

      field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

      field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"

      field :business, -> { Payabli::Types::CreateBusinessRequest }, optional: true, nullable: false

      field :business_reference, -> { String }, optional: true, nullable: false, api_name: "businessReference"
    end
  end
end
