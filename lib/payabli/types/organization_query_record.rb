# frozen_string_literal: true

module Payabli
  module Types
    class OrganizationQueryRecord < Internal::Types::Model
      field :billing_info, -> { Payabli::Types::InstrumentResponse }, optional: true, nullable: false, api_name: "BillingInfo"

      field :contacts, -> { Internal::Types::Array[Payabli::Types::ContactsResponse] }, optional: true, nullable: false, api_name: "Contacts"

      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"

      field :has_billing, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "HasBilling"

      field :has_residual, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "HasResidual"

      field :id_org, -> { Integer }, optional: true, nullable: false, api_name: "idOrg"

      field :is_root, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isRoot"

      field :org_address, -> { String }, optional: true, nullable: false, api_name: "OrgAddress"

      field :org_city, -> { String }, optional: true, nullable: false, api_name: "OrgCity"

      field :org_country, -> { String }, optional: true, nullable: false, api_name: "OrgCountry"

      field :org_entry_name, -> { String }, optional: true, nullable: false, api_name: "OrgEntryName"

      field :org_favicon, -> { String }, optional: true, nullable: false, api_name: "OrgFavicon"

      field :org_id, -> { String }, optional: true, nullable: false, api_name: "OrgId"

      field :org_logo, -> { String }, optional: true, nullable: false, api_name: "OrgLogo"

      field :org_name, -> { String }, optional: true, nullable: false, api_name: "OrgName"

      field :org_parent_id, -> { Integer }, optional: true, nullable: false, api_name: "OrgParentId"

      field :org_parent_name, -> { String }, optional: true, nullable: false, api_name: "OrgParentName"

      field :org_state, -> { String }, optional: true, nullable: false, api_name: "OrgState"

      field :org_timezone, -> { Integer }, optional: true, nullable: false, api_name: "OrgTimezone"

      field :org_type, -> { Integer }, optional: true, nullable: false, api_name: "OrgType"

      field :org_website, -> { String }, optional: true, nullable: false, api_name: "OrgWebsite"

      field :org_zip, -> { String }, optional: true, nullable: false, api_name: "OrgZip"

      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"

      field :reply_to_email, -> { String }, optional: true, nullable: false, api_name: "ReplyToEmail"

      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false

      field :services, -> { Internal::Types::Array[Payabli::Types::OrganizationQueryRecordServicesItem] }, optional: true, nullable: false, api_name: "Services"

      field :summary, -> { Payabli::Types::SummaryOrg }, optional: true, nullable: false

      field :users, -> { Internal::Types::Array[Payabli::Types::UserQueryRecord] }, optional: true, nullable: false
    end
  end
end
