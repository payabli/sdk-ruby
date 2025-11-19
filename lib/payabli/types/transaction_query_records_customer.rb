# frozen_string_literal: true

module Payabli
  module Types
    class TransactionQueryRecordsCustomer < Internal::Types::Model
      field :ach_holder_type, lambda {
        Payabli::Types::AchHolderType
      }, optional: true, nullable: false, api_name: "AchHolderType"
      field :ach_sec_code, -> { String }, optional: true, nullable: false, api_name: "AchSecCode"
      field :batch_amount, -> { Integer }, optional: true, nullable: false, api_name: "BatchAmount"
      field :batch_number, -> { String }, optional: true, nullable: false, api_name: "BatchNumber"
      field :cfee_transactions, lambda {
        Internal::Types::Array[Payabli::Types::QueryCFeeTransaction]
      }, optional: true, nullable: false, api_name: "CfeeTransactions"
      field :connector_name, -> { String }, optional: true, nullable: false, api_name: "ConnectorName"
      field :customer, lambda {
        Payabli::Types::QueryTransactionPayorDataCustomer
      }, optional: true, nullable: false, api_name: "Customer"
      field :device_id, -> { String }, optional: true, nullable: false, api_name: "DeviceId"
      field :entrypage_id, -> { Integer }, optional: true, nullable: false, api_name: "EntrypageId"
      field :external_processor_information, lambda {
        String
      }, optional: true, nullable: false, api_name: "ExternalProcessorInformation"
      field :fee_amount, -> { Integer }, optional: true, nullable: false, api_name: "FeeAmount"
      field :gateway_trans_id, -> { String }, optional: true, nullable: false, api_name: "GatewayTransId"
      field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "InvoiceData"
      field :method_, -> { String }, optional: true, nullable: false, api_name: "Method"
      field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "NetAmount"
      field :operation, -> { String }, optional: true, nullable: false, api_name: "Operation"
      field :order_id, -> { String }, optional: true, nullable: false, api_name: "OrderId"
      field :org_id, -> { Integer }, optional: true, nullable: false, api_name: "OrgId"
      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
      field :payment_data, lambda {
        Payabli::Types::QueryPaymentData
      }, optional: true, nullable: false, api_name: "PaymentData"
      field :payment_trans_id, -> { String }, optional: true, nullable: false, api_name: "PaymentTransId"
      field :payor_id, -> { Integer }, optional: true, nullable: false, api_name: "PayorId"
      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
      field :paypoint_id, -> { Integer }, optional: true, nullable: false, api_name: "PaypointId"
      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
      field :pending_fee_amount, -> { Integer }, optional: true, nullable: false, api_name: "PendingFeeAmount"
      field :refund_id, -> { Integer }, optional: true, nullable: false, api_name: "RefundId"
      field :response_data, lambda {
        Payabli::Types::QueryResponseData
      }, optional: true, nullable: false, api_name: "ResponseData"
      field :returned_id, -> { Integer }, optional: true, nullable: false, api_name: "ReturnedId"
      field :schedule_reference, -> { Integer }, optional: true, nullable: false, api_name: "ScheduleReference"
      field :settlement_status, -> { Integer }, optional: true, nullable: false, api_name: "SettlementStatus"
      field :source, -> { String }, optional: true, nullable: false, api_name: "Source"
      field :split_funding_instructions, lambda {
        Internal::Types::Array[Payabli::Types::SplitFundingContent]
      }, optional: true, nullable: false, api_name: "splitFundingInstructions"
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "TotalAmount"
      field :transaction_events, lambda {
        Internal::Types::Array[Payabli::Types::QueryTransactionEvents]
      }, optional: true, nullable: false, api_name: "TransactionEvents"
      field :transaction_time, -> { String }, optional: true, nullable: false, api_name: "TransactionTime"
      field :trans_additional_data, lambda {
        Internal::Types::Hash[String, Object]
      }, optional: true, nullable: false, api_name: "TransAdditionalData"
      field :trans_status, -> { Integer }, optional: true, nullable: false, api_name: "TransStatus"
    end
  end
end
