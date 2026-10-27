# frozen_string_literal: true

module Payabli
  module Types
    # Fields you can set when you create an organization. Payabli sets the organization type, so the request has no
    # `paypointType`. Of these shared fields, only `doingBusinessAs` is required. Set `description`, `website`,
    # `customerServicePhone`, `customerServiceEmail`, and `timezone` when you have them.
    class OrganizationWritableFields < Internal::Types::Model
      field :parent_paypoint_reference, -> { String }, optional: true, nullable: false, api_name: "parentPaypointReference"

      field :doing_business_as, -> { String }, optional: false, nullable: false, api_name: "doingBusinessAs"

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
