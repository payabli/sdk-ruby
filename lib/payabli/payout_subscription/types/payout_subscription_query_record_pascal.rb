# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class PayoutSubscriptionQueryRecordPascal < Internal::Types::Model
        field :id_out_subscription, -> { Integer }, optional: true, nullable: false, api_name: "IdOutSubscription"

        field :status, -> { Integer }, optional: true, nullable: false, api_name: "Status"

        field :events, -> { Internal::Types::Array[Payabli::Types::GeneralEvents] }, optional: true, nullable: false, api_name: "Events"

        field :vendor, -> { Payabli::Types::VendorQueryRecord }, optional: true, nullable: false, api_name: "Vendor"

        field :bill_data, -> { Internal::Types::Array[Payabli::Types::BillPayOutData] }, optional: true, nullable: false, api_name: "BillData"

        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "ExternalPaypointID"

        field :method_, -> { String }, optional: true, nullable: false, api_name: "Method"

        field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "PaypointId"

        field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "TotalAmount"

        field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "NetAmount"

        field :fee_amount, -> { Integer }, optional: true, nullable: false, api_name: "FeeAmount"

        field :payment_data, -> { Payabli::Types::QueryPaymentData }, optional: true, nullable: false, api_name: "PaymentData"

        field :start_date, -> { String }, optional: false, nullable: true, api_name: "StartDate"

        field :end_date, -> { String }, optional: false, nullable: true, api_name: "EndDate"

        field :next_date, -> { String }, optional: false, nullable: true, api_name: "NextDate"

        field :frequency, -> { String }, optional: true, nullable: false, api_name: "Frequency"

        field :total_cycles, -> { Integer }, optional: true, nullable: false, api_name: "TotalCycles"

        field :left_cycles, -> { Integer }, optional: true, nullable: false, api_name: "LeftCycles"

        field :last_run, -> { String }, optional: false, nullable: true, api_name: "LastRun"

        field :entrypage_id, -> { Integer }, optional: true, nullable: false, api_name: "EntrypageId"

        field :until_cancelled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "UntilCancelled"

        field :last_updated, -> { String }, optional: true, nullable: false, api_name: "LastUpdated"

        field :created_at, -> { String }, optional: true, nullable: false, api_name: "CreatedAt"

        field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"

        field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"

        field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"

        field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"

        field :parent_org_id, -> { Integer }, optional: true, nullable: false, api_name: "ParentOrgId"

        field :source, -> { String }, optional: true, nullable: false, api_name: "Source"
      end
    end
  end
end
