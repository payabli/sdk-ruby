# frozen_string_literal: true

module PayabliSdk
  module Types
    # Fields for Pay In boarding applications.
    class ApplicationDataPayIn < Internal::Types::Model
      field :services, -> { PayabliSdk::Types::ApplicationDataPayInServices }, optional: false, nullable: false
      field :annual_revenue, -> { Integer }, optional: true, nullable: false, api_name: "annualRevenue"
      field :average_bill_size, -> { String }, optional: true, nullable: false, api_name: "averageBillSize"
      field :average_monthly_bill, -> { String }, optional: true, nullable: false, api_name: "averageMonthlyBill"
      field :avgmonthly, -> { Integer }, optional: true, nullable: false
      field :baddress, -> { String }, optional: true, nullable: false
      field :baddress_1, -> { String }, optional: true, nullable: false, api_name: "baddress1"
      field :bank_data, -> { PayabliSdk::Types::ApplicationDataPayInBankData }, optional: false, nullable: false, api_name: "bankData"
      field :bcity, -> { String }, optional: true, nullable: false
      field :bcountry, -> { String }, optional: true, nullable: false
      field :binperson, -> { Integer }, optional: true, nullable: false
      field :binphone, -> { Integer }, optional: true, nullable: false
      field :binweb, -> { Integer }, optional: true, nullable: false
      field :boarding_link_id, -> { String }, optional: true, nullable: false, api_name: "boardingLinkId"
      field :bstate, -> { String }, optional: true, nullable: false
      field :bsummary, -> { String }, optional: true, nullable: false
      field :btype, -> { PayabliSdk::Types::OwnType }, optional: true, nullable: false
      field :bzip, -> { String }, optional: true, nullable: false
      field :contacts, -> { Internal::Types::Array[PayabliSdk::Types::ApplicationDataPayInContactsItem] }, optional: true, nullable: false
      field :credit_limit, -> { String }, optional: true, nullable: false, api_name: "creditLimit"
      field :dba_name, -> { String }, optional: true, nullable: false, api_name: "dbaName"
      field :ein, -> { String }, optional: true, nullable: false
      field :externalpaypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalpaypointID"
      field :faxnumber, -> { String }, optional: true, nullable: false
      field :highticketamt, -> { Integer }, optional: true, nullable: false
      field :legal_name, -> { String }, optional: true, nullable: false, api_name: "legalName"
      field :license, -> { String }, optional: true, nullable: false
      field :licstate, -> { String }, optional: true, nullable: false
      field :maddress, -> { String }, optional: true, nullable: false
      field :maddress_1, -> { String }, optional: true, nullable: false, api_name: "maddress1"
      field :mcc, -> { String }, optional: true, nullable: false
      field :mcity, -> { String }, optional: true, nullable: false
      field :mcountry, -> { String }, optional: true, nullable: false
      field :mstate, -> { String }, optional: true, nullable: false
      field :mzip, -> { String }, optional: true, nullable: false
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "orgId"
      field :ownership, -> { Internal::Types::Array[PayabliSdk::Types::ApplicationDataPayInOwnershipItem] }, optional: true, nullable: false
      field :phonenumber, -> { String }, optional: false, nullable: false
      field :processing_region, -> { String }, optional: false, nullable: false, api_name: "processingRegion"
      field :recipient_email, -> { String }, optional: true, nullable: false, api_name: "recipientEmail"
      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"
      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :signer, -> { PayabliSdk::Types::SignerDataRequest }, optional: false, nullable: false
      field :startdate, -> { String }, optional: true, nullable: false
      field :tax_fill_name, -> { String }, optional: true, nullable: false, api_name: "taxFillName"
      field :template_id, -> { Integer }, optional: true, nullable: false, api_name: "templateId"
      field :ticketamt, -> { Integer }, optional: true, nullable: false
      field :website, -> { String }, optional: true, nullable: false
      field :when_charged, -> { PayabliSdk::Types::Whencharged }, optional: false, nullable: false, api_name: "whenCharged"
      field :when_delivered, -> { PayabliSdk::Types::Whendelivered }, optional: false, nullable: false, api_name: "whenDelivered"
      field :when_provided, -> { PayabliSdk::Types::Whenprovided }, optional: false, nullable: false, api_name: "whenProvided"
      field :when_refunded, -> { PayabliSdk::Types::Whenrefunded }, optional: false, nullable: false, api_name: "whenRefunded"
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
      field :rep_code, -> { String }, optional: true, nullable: false, api_name: "RepCode"
      field :rep_name, -> { String }, optional: true, nullable: false, api_name: "RepName"
      field :rep_office, -> { String }, optional: true, nullable: false, api_name: "RepOffice"
      field :on_create, -> { String }, optional: true, nullable: false, api_name: "onCreate"
    end
  end
end
