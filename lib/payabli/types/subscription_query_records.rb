# frozen_string_literal: true

module Payabli
  module Types
    class SubscriptionQueryRecords < Internal::Types::Model
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "CreatedAt"
      field :customer, lambda {
        Payabli::Types::QueryTransactionPayorData
      }, optional: true, nullable: false, api_name: "Customer"
      field :end_date, -> { String }, optional: true, nullable: false, api_name: "EndDate"
      field :entrypage_id, -> { Integer }, optional: true, nullable: false, api_name: "EntrypageId"
      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "ExternalPaypointID"
      field :fee_amount, -> { Integer }, optional: true, nullable: false, api_name: "FeeAmount"
      field :frequency, -> { String }, optional: true, nullable: false, api_name: "Frequency"
      field :id_sub, -> { Integer }, optional: true, nullable: false, api_name: "IdSub"
      field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "InvoiceData"
      field :last_run, -> { String }, optional: true, nullable: false, api_name: "LastRun"
      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "LastUpdated"
      field :left_cycles, -> { Integer }, optional: true, nullable: false, api_name: "LeftCycles"
      field :method_, -> { String }, optional: true, nullable: false, api_name: "Method"
      field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "NetAmount"
      field :next_date, -> { String }, optional: true, nullable: false, api_name: "NextDate"
      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
      field :payment_data, lambda {
        Payabli::Types::QueryPaymentData
      }, optional: true, nullable: false, api_name: "PaymentData"
      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
      field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "PaypointId"
      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
      field :plan_id, -> { Integer }, optional: true, nullable: false, api_name: "PlanId"
      field :source, -> { String }, optional: true, nullable: false, api_name: "Source"
      field :start_date, -> { String }, optional: true, nullable: false, api_name: "StartDate"
      field :sub_events, lambda {
        Internal::Types::Array[Payabli::Types::GeneralEvents]
      }, optional: true, nullable: false, api_name: "SubEvents"
      field :sub_status, -> { Integer }, optional: true, nullable: false, api_name: "SubStatus"
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "TotalAmount"
      field :total_cycles, -> { Integer }, optional: true, nullable: false, api_name: "TotalCycles"
      field :until_cancelled, lambda {
        Internal::Types::Boolean
      }, optional: true, nullable: false, api_name: "UntilCancelled"
    end
  end
end
