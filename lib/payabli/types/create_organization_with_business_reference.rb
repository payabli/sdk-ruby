# frozen_string_literal: true

module Payabli
  module Types
    # Create an organization under an existing business. Provide `businessReference` plus `doingBusinessAs`. All other
    # fields are optional.
    class CreateOrganizationWithBusinessReference < Internal::Types::Model
      field :parent_paypoint_reference, -> { String }, optional: true, nullable: false, api_name: "parentPaypointReference"

      field :doing_business_as, -> { String }, optional: false, nullable: false, api_name: "doingBusinessAs"

      field :description, -> { String }, optional: true, nullable: false

      field :website, -> { String }, optional: true, nullable: false

      field :customer_service_phone, -> { String }, optional: true, nullable: false, api_name: "customerServicePhone"

      field :customer_service_email, -> { String }, optional: true, nullable: false, api_name: "customerServiceEmail"

      field :timezone, -> { String }, optional: true, nullable: false

      field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

      field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"

      field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"
    end
  end
end
