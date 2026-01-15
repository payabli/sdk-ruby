# frozen_string_literal: true

module PayabliSdk
  module Organization
    module Types
      class AddOrganizationRequest < Internal::Types::Model
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :services, -> { Internal::Types::Array[PayabliSdk::Types::ServiceCost] }, optional: true, nullable: false
        field :billing_info, -> { PayabliSdk::Types::Instrument }, optional: true, nullable: false, api_name: "billingInfo"
        field :contacts, -> { Internal::Types::Array[PayabliSdk::Types::Contacts] }, optional: true, nullable: false
        field :has_billing, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasBilling"
        field :has_residual, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasResidual"
        field :org_address, -> { String }, optional: true, nullable: false, api_name: "orgAddress"
        field :org_city, -> { String }, optional: true, nullable: false, api_name: "orgCity"
        field :org_country, -> { String }, optional: true, nullable: false, api_name: "orgCountry"
        field :org_entry_name, -> { String }, optional: true, nullable: false, api_name: "orgEntryName"
        field :org_id, -> { String }, optional: true, nullable: false, api_name: "orgId"
        field :org_logo, -> { PayabliSdk::Types::FileContent }, optional: true, nullable: false, api_name: "orgLogo"
        field :org_name, -> { String }, optional: false, nullable: false, api_name: "orgName"
        field :org_parent_id, -> { Integer }, optional: true, nullable: false, api_name: "orgParentId"
        field :org_state, -> { String }, optional: true, nullable: false, api_name: "orgState"
        field :org_timezone, -> { Integer }, optional: true, nullable: false, api_name: "orgTimezone"
        field :org_type, -> { Integer }, optional: false, nullable: false, api_name: "orgType"
        field :org_website, -> { String }, optional: true, nullable: false, api_name: "orgWebsite"
        field :org_zip, -> { String }, optional: true, nullable: false, api_name: "orgZip"
        field :reply_to_email, -> { String }, optional: false, nullable: false, api_name: "replyToEmail"
      end
    end
  end
end
