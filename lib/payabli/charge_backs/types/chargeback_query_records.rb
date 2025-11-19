# frozen_string_literal: true

module Payabli
  module ChargeBacks
    module Types
      class ChargebackQueryRecords < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false, api_name: "Id"
        field :chargeback_date, -> { String }, optional: false, nullable: false, api_name: "ChargebackDate"
        field :case_number, -> { String }, optional: false, nullable: false, api_name: "CaseNumber"
        field :reason_code, -> { String }, optional: false, nullable: false, api_name: "ReasonCode"
        field :reason, -> { String }, optional: false, nullable: false, api_name: "Reason"
        field :reference_number, -> { String }, optional: false, nullable: false, api_name: "ReferenceNumber"
        field :last_four, -> { String }, optional: false, nullable: false, api_name: "LastFour"
        field :account_type, -> { String }, optional: false, nullable: false, api_name: "AccountType"
        field :status, -> { Integer }, optional: false, nullable: false, api_name: "Status"
        field :method_, -> { String }, optional: false, nullable: false, api_name: "Method"
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "CreatedAt"
        field :reply_by, -> { String }, optional: false, nullable: false, api_name: "ReplyBy"
        field :payment_trans_id, -> { String }, optional: false, nullable: false, api_name: "PaymentTransId"
        field :schedule_reference, -> { Integer }, optional: true, nullable: false, api_name: "ScheduleReference"
        field :order_id, -> { String }, optional: false, nullable: false, api_name: "OrderId"
        field :net_amount, -> { Integer }, optional: false, nullable: false, api_name: "NetAmount"
        field :transaction_time, -> { String }, optional: false, nullable: false, api_name: "TransactionTime"
        field :customer, lambda {
          Payabli::Types::QueryTransactionPayorData
        }, optional: false, nullable: false, api_name: "Customer"
        field :payment_data, lambda {
          Payabli::Types::QueryPaymentData
        }, optional: false, nullable: false, api_name: "PaymentData"
        field :paypoint_legalname, -> { String }, optional: false, nullable: false, api_name: "PaypointLegalname"
        field :paypoint_dbaname, -> { String }, optional: false, nullable: false, api_name: "PaypointDbaname"
        field :parent_org_name, -> { String }, optional: false, nullable: false, api_name: "ParentOrgName"
        field :parent_org_id, -> { Integer }, optional: false, nullable: false, api_name: "ParentOrgId"
        field :paypoint_entryname, -> { String }, optional: false, nullable: false, api_name: "PaypointEntryname"
        field :responses, lambda {
          Internal::Types::Array[Payabli::ChargeBacks::Types::ChargeBackResponse]
        }, optional: false, nullable: false, api_name: "Responses"
        field :transaction, lambda {
          Payabli::Types::TransactionQueryRecords
        }, optional: false, nullable: false, api_name: "Transaction"
        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
        field :pageidentifier, -> { String }, optional: true, nullable: false
        field :messages, lambda {
          Internal::Types::Array[Payabli::ChargeBacks::Types::ChargebackMessage]
        }, optional: false, nullable: false
        field :service_group, -> { String }, optional: false, nullable: false, api_name: "ServiceGroup"
        field :dispute_type, -> { String }, optional: false, nullable: false, api_name: "DisputeType"
        field :processor_name, -> { String }, optional: false, nullable: false, api_name: "ProcessorName"
      end
    end
  end
end
