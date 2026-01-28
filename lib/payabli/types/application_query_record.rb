# frozen_string_literal: true

module Payabli
  module Types
    class ApplicationQueryRecord < Internal::Types::Model
      field :annual_revenue, -> { Integer }, optional: true, nullable: false, api_name: "annualRevenue"
      field :average_monthly_volume, -> { Integer }, optional: true, nullable: false, api_name: "averageMonthlyVolume"
      field :average_ticket_amount, -> { Integer }, optional: true, nullable: false, api_name: "averageTicketAmount"
      field :b_address_1, -> { String }, optional: true, nullable: false, api_name: "bAddress1"
      field :b_address_2, -> { String }, optional: true, nullable: false, api_name: "bAddress2"
      field :bank_data, -> { Internal::Types::Array[Payabli::Types::Bank] }, optional: true, nullable: false, api_name: "bankData"
      field :b_city, -> { String }, optional: true, nullable: false, api_name: "bCity"
      field :b_country, -> { String }, optional: true, nullable: false, api_name: "bCountry"
      field :b_fax, -> { String }, optional: true, nullable: false, api_name: "bFax"
      field :bin_person, -> { Integer }, optional: true, nullable: false, api_name: "binPerson"
      field :bin_phone, -> { Integer }, optional: true, nullable: false, api_name: "binPhone"
      field :bin_web, -> { Integer }, optional: true, nullable: false, api_name: "binWeb"
      field :boarding_link_id, -> { Integer }, optional: true, nullable: false, api_name: "boardingLinkId"
      field :boarding_status, -> { Integer }, optional: true, nullable: false, api_name: "boardingStatus"
      field :boarding_sub_status, -> { Integer }, optional: true, nullable: false, api_name: "boardingSubStatus"
      field :b_phone, -> { String }, optional: true, nullable: false, api_name: "bPhone"
      field :b_startdate, -> { String }, optional: true, nullable: false, api_name: "bStartdate"
      field :b_state, -> { String }, optional: true, nullable: false, api_name: "bState"
      field :b_summary, -> { String }, optional: true, nullable: false, api_name: "bSummary"
      field :builder_data, -> { Payabli::Types::BuilderData }, optional: true, nullable: false, api_name: "builderData"
      field :b_zip, -> { String }, optional: true, nullable: false, api_name: "bZip"
      field :contact_data, -> { Internal::Types::Array[Payabli::Types::Contacts] }, optional: true, nullable: false, api_name: "contactData"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :dba_name, -> { String }, optional: true, nullable: false, api_name: "dbaName"
      field :documents_ref, -> { Payabli::Types::BoardingApplicationAttachments }, optional: true, nullable: false, api_name: "documentsRef"
      field :ein, -> { String }, optional: true, nullable: false
      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointId"
      field :general_events, -> { Internal::Types::Array[Payabli::Types::GeneralEvents] }, optional: true, nullable: false, api_name: "generalEvents"
      field :high_ticket_amount, -> { Integer }, optional: true, nullable: false, api_name: "highTicketAmount"
      field :id_application, -> { Integer }, optional: true, nullable: false, api_name: "idApplication"
      field :last_modified, -> { String }, optional: true, nullable: false, api_name: "lastModified"
      field :legal_name, -> { String }, optional: true, nullable: false, api_name: "legalName"
      field :license, -> { String }, optional: true, nullable: false
      field :license_state, -> { String }, optional: true, nullable: false, api_name: "licenseState"
      field :logo, -> { Payabli::Types::FileContent }, optional: true, nullable: false
      field :m_address_1, -> { String }, optional: true, nullable: false, api_name: "mAddress1"
      field :m_address_2, -> { String }, optional: true, nullable: false, api_name: "mAddress2"
      field :mccid, -> { String }, optional: true, nullable: false
      field :m_city, -> { String }, optional: true, nullable: false, api_name: "mCity"
      field :m_country, -> { String }, optional: true, nullable: false, api_name: "mCountry"
      field :m_state, -> { String }, optional: true, nullable: false, api_name: "mState"
      field :m_zip, -> { String }, optional: true, nullable: false, api_name: "mZip"
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      field :org_parent_name, -> { String }, optional: true, nullable: false, api_name: "orgParentName"
      field :owner_data, -> { Internal::Types::Array[Payabli::Types::Owners] }, optional: true, nullable: false, api_name: "ownerData"
      field :own_type, -> { Payabli::Types::OwnType }, optional: true, nullable: false, api_name: "ownType"
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"
      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :sales_code, -> { String }, optional: true, nullable: false, api_name: "salesCode"
      field :service_data, -> { Payabli::Types::Services }, optional: true, nullable: false, api_name: "serviceData"
      field :signer, -> { Payabli::Types::SignerData }, optional: true, nullable: false
      field :taxfillname, -> { String }, optional: true, nullable: false
      field :template_id, -> { Integer }, optional: true, nullable: false, api_name: "templateId"
      field :website_address, -> { String }, optional: true, nullable: false, api_name: "websiteAddress"
      field :whencharged, -> { Payabli::Types::Whencharged }, optional: true, nullable: false
      field :whendelivered, -> { Payabli::Types::Whendelivered }, optional: true, nullable: false
      field :when_provided, -> { Payabli::Types::Whenprovided }, optional: true, nullable: false, api_name: "whenProvided"
      field :whenrefund, -> { Payabli::Types::Whenrefunded }, optional: true, nullable: false
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
      field :rep_code, -> { String }, optional: true, nullable: false, api_name: "RepCode"
      field :rep_name, -> { String }, optional: true, nullable: false, api_name: "RepName"
      field :rep_office, -> { String }, optional: true, nullable: false, api_name: "RepOffice"
    end
  end
end
