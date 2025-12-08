# frozen_string_literal: true

module Payabli
  module Types
    class QueryResponseSettlementsRecordsItem < Internal::Types::Model
      field :batch_amount, -> { Integer }, optional: true, nullable: false, api_name: "BatchAmount"
      field :batch_number, -> { String }, optional: true, nullable: false, api_name: "BatchNumber"
      field :category, -> { String }, optional: true, nullable: false, api_name: "Category"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "CreatedAt"
      field :customer, -> { Payabli::Types::QueryTransactionPayorData }, optional: true, nullable: false, api_name: "Customer"
      field :deposit_date, -> { String }, optional: true, nullable: false, api_name: "DepositDate"
      field :expected_deposit_date, -> { String }, optional: true, nullable: false, api_name: "ExpectedDepositDate"
      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
      field :gateway_trans_id, -> { String }, optional: true, nullable: false, api_name: "GatewayTransId"
      field :id, -> { Integer }, optional: true, nullable: false, api_name: "Id"
      field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
      field :is_hold, -> { Integer }, optional: true, nullable: false, api_name: "isHold"
      field :masked_account, -> { String }, optional: true, nullable: false, api_name: "MaskedAccount"
      field :method_, -> { String }, optional: true, nullable: false, api_name: "Method"
      field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "NetAmount"
      field :operation, -> { String }, optional: true, nullable: false, api_name: "Operation"
      field :order_id, -> { String }, optional: true, nullable: false, api_name: "OrderId"
      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
      field :payment_data, -> { Payabli::Types::QueryPaymentData }, optional: true, nullable: false, api_name: "PaymentData"
      field :payment_trans_id, -> { String }, optional: true, nullable: false, api_name: "PaymentTransId"
      field :payment_trans_status, -> { Integer }, optional: true, nullable: false, api_name: "PaymentTransStatus"
      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
      field :response_data, -> { Payabli::Types::QueryResponseData }, optional: true, nullable: false, api_name: "ResponseData"
      field :schedule_reference, -> { Integer }, optional: true, nullable: false, api_name: "ScheduleReference"
      field :settled_amount, -> { Integer }, optional: true, nullable: false, api_name: "SettledAmount"
      field :settlement_date, -> { String }, optional: true, nullable: false, api_name: "SettlementDate"
      field :source, -> { String }, optional: true, nullable: false, api_name: "Source"
      field :status, -> { Integer }, optional: true, nullable: false, api_name: "Status"
      field :transaction_events, -> { Internal::Types::Array[Payabli::Types::QueryTransactionEvents] }, optional: true, nullable: false, api_name: "TransactionEvents"
      field :transaction_time, -> { String }, optional: true, nullable: false, api_name: "TransactionTime"
      field :trans_method, -> { String }, optional: true, nullable: false, api_name: "TransMethod"
      field :type, -> { String }, optional: true, nullable: false, api_name: "Type"
    end
  end
end
