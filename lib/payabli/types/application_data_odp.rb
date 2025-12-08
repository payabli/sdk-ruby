# frozen_string_literal: true

module Payabli
  module Types
    class ApplicationDataOdp < Internal::Types::Model
      field :services, -> { Payabli::Types::Services }, optional: true, nullable: false
      field :annual_revenue, -> { Integer }, optional: true, nullable: false, api_name: "annualRevenue"
      field :attachments, -> { Internal::Types::Array[Payabli::Types::FileContent] }, optional: true, nullable: false
      field :baddress, -> { String }, optional: true, nullable: false
      field :baddress_1, -> { String }, optional: true, nullable: false, api_name: "baddress1"
      field :bank_data, -> { Internal::Types::Array[Payabli::Types::Bank] }, optional: true, nullable: false, api_name: "bankData"
      field :bcity, -> { String }, optional: true, nullable: false
      field :bcountry, -> { String }, optional: true, nullable: false
      field :boarding_link_id, -> { String }, optional: true, nullable: false, api_name: "boardingLinkId"
      field :bstate, -> { String }, optional: true, nullable: false
      field :bsummary, -> { String }, optional: true, nullable: false
      field :btype, -> { Payabli::Types::OwnType }, optional: true, nullable: false
      field :bzip, -> { String }, optional: true, nullable: false
      field :contacts, -> { Internal::Types::Array[Payabli::Types::ApplicationDataOdpContactsItem] }, optional: true, nullable: false
      field :dbaname, -> { String }, optional: true, nullable: false
      field :ein, -> { String }, optional: true, nullable: false
      field :faxnumber, -> { String }, optional: true, nullable: false
      field :highticketamt, -> { Integer }, optional: true, nullable: false
      field :legalname, -> { String }, optional: true, nullable: false
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
      field :ownership, -> { Internal::Types::Array[Payabli::Types::ApplicationDataOdpOwnershipItem] }, optional: true, nullable: false
      field :payout_average_monthly_volume, -> { Integer }, optional: false, nullable: false, api_name: "payoutAverageMonthlyVolume"
      field :payout_average_ticket_amount, -> { Integer }, optional: false, nullable: false, api_name: "payoutAverageTicketAmount"
      field :payout_credit_limit, -> { Integer }, optional: false, nullable: false, api_name: "payoutCreditLimit"
      field :payout_high_ticket_amount, -> { Integer }, optional: false, nullable: false, api_name: "payoutHighTicketAmount"
      field :phonenumber, -> { String }, optional: true, nullable: false
      field :recipient_email, -> { String }, optional: true, nullable: false, api_name: "recipientEmail"
      field :recipient_email_notification, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "recipientEmailNotification"
      field :resumable, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :signer, -> { Payabli::Types::SignerDataRequest }, optional: false, nullable: false
      field :startdate, -> { String }, optional: true, nullable: false
      field :taxfillname, -> { String }, optional: true, nullable: false
      field :template_id, -> { Integer }, optional: true, nullable: false, api_name: "templateId"
      field :website, -> { String }, optional: true, nullable: false
      field :rep_code, -> { String }, optional: true, nullable: false, api_name: "RepCode"
      field :rep_name, -> { String }, optional: true, nullable: false, api_name: "RepName"
      field :rep_office, -> { String }, optional: true, nullable: false, api_name: "RepOffice"
    end
  end
end
