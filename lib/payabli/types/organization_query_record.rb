# frozen_string_literal: true

module Payabli
  module Types
    class OrganizationQueryRecord < Internal::Types::Model
      field :services, -> { Internal::Types::Array[Payabli::Types::OrganizationQueryRecordServicesItem] }, optional: true, nullable: false
      field :billing_info, -> { Payabli::Types::Instrument }, optional: true, nullable: false, api_name: "billingInfo"
      field :contacts, -> { Internal::Types::Array[Payabli::Types::Contacts] }, optional: true, nullable: false
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :has_billing, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasBilling"
      field :has_residual, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasResidual"
      field :id_org, -> { Integer }, optional: true, nullable: false, api_name: "idOrg"
      field :is_root, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isRoot"
      field :org_address, -> { String }, optional: true, nullable: false, api_name: "orgAddress"
      field :org_city, -> { String }, optional: true, nullable: false, api_name: "orgCity"
      field :org_country, -> { String }, optional: true, nullable: false, api_name: "orgCountry"
      field :org_entry_name, -> { String }, optional: true, nullable: false, api_name: "orgEntryName"
      field :org_id, -> { String }, optional: true, nullable: false, api_name: "orgId"
      field :org_logo, -> { Payabli::Types::FileContent }, optional: true, nullable: false, api_name: "orgLogo"
      field :org_name, -> { String }, optional: true, nullable: false, api_name: "orgName"
      field :org_parent_id, -> { Integer }, optional: true, nullable: false, api_name: "orgParentId"
      field :org_parent_name, -> { String }, optional: true, nullable: false, api_name: "orgParentName"
      field :org_state, -> { String }, optional: true, nullable: false, api_name: "orgState"
      field :org_timezone, -> { Integer }, optional: true, nullable: false, api_name: "orgTimezone"
      field :org_type, -> { Integer }, optional: true, nullable: false, api_name: "orgType"
      field :org_website, -> { String }, optional: true, nullable: false, api_name: "orgWebsite"
      field :org_zip, -> { String }, optional: true, nullable: false, api_name: "orgZip"
      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"
      field :reply_to_email, -> { String }, optional: true, nullable: false, api_name: "replyToEmail"
      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :summary, -> { Payabli::Types::SummaryOrg }, optional: true, nullable: false
      field :users, -> { Internal::Types::Array[Payabli::Types::UserQueryRecord] }, optional: true, nullable: false
    end
  end
end
