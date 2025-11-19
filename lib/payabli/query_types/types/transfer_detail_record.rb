# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class TransferDetailRecord < Internal::Types::Model
        field :transfer_detail_id, -> { Integer }, optional: false, nullable: true, api_name: "transferDetailId"
        field :transfer_id, -> { Integer }, optional: false, nullable: true, api_name: "transferId"
        field :transaction_id, -> { String }, optional: false, nullable: true, api_name: "transactionId"
        field :transaction_number, -> { String }, optional: false, nullable: true, api_name: "transactionNumber"
        field :type, -> { String }, optional: false, nullable: true
        field :category, -> { String }, optional: false, nullable: true
        field :gross_amount, -> { Integer }, optional: false, nullable: true, api_name: "grossAmount"
        field :charge_back_amount, -> { Integer }, optional: false, nullable: true, api_name: "chargeBackAmount"
        field :returned_amount, -> { Integer }, optional: false, nullable: true, api_name: "returnedAmount"
        field :refund_amount, -> { Integer }, optional: false, nullable: true, api_name: "refundAmount"
        field :hold_amount, -> { Integer }, optional: false, nullable: true, api_name: "holdAmount"
        field :released_amount, -> { Integer }, optional: false, nullable: true, api_name: "releasedAmount"
        field :billing_fees_amount, -> { Integer }, optional: false, nullable: true, api_name: "billingFeesAmount"
        field :third_party_paid_amount, lambda {
          Integer
        }, optional: false, nullable: true, api_name: "thirdPartyPaidAmount"
        field :adjustments_amount, -> { Integer }, optional: false, nullable: true, api_name: "adjustmentsAmount"
        field :net_transfer_amount, -> { Integer }, optional: false, nullable: true, api_name: "netTransferAmount"
        field :split_funding_amount, -> { Integer }, optional: false, nullable: true, api_name: "splitFundingAmount"
        field :billing_fees_details, lambda {
          Internal::Types::Array[Payabli::Types::BillingFeeDetail]
        }, optional: false, nullable: true, api_name: "billingFeesDetails"
        field :parent_org_name, -> { String }, optional: false, nullable: true, api_name: "ParentOrgName"
        field :paypoint_dbaname, -> { String }, optional: false, nullable: true, api_name: "PaypointDbaname"
        field :paypoint_legalname, -> { String }, optional: false, nullable: true, api_name: "PaypointLegalname"
        field :paypoint_entryname, -> { String }, optional: false, nullable: true, api_name: "PaypointEntryname"
        field :payment_trans_id, -> { String }, optional: false, nullable: true, api_name: "PaymentTransId"
        field :connector_name, -> { String }, optional: false, nullable: true, api_name: "ConnectorName"
        field :external_processor_information, lambda {
          String
        }, optional: false, nullable: true, api_name: "ExternalProcessorInformation"
        field :gateway_trans_id, -> { String }, optional: false, nullable: true, api_name: "GatewayTransId"
        field :order_id, -> { String }, optional: false, nullable: true, api_name: "OrderId"
        field :method_, -> { String }, optional: false, nullable: true, api_name: "Method"
        field :batch_number, -> { String }, optional: false, nullable: true, api_name: "BatchNumber"
        field :batch_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchAmount"
        field :payor_id, -> { Integer }, optional: false, nullable: true, api_name: "PayorId"
        field :payment_data, lambda {
          Payabli::Types::QueryPaymentData
        }, optional: false, nullable: true, api_name: "PaymentData"
        field :trans_status, -> { Integer }, optional: false, nullable: true, api_name: "TransStatus"
        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "PaypointId"
        field :total_amount, -> { Integer }, optional: false, nullable: true, api_name: "TotalAmount"
        field :net_amount, -> { Integer }, optional: false, nullable: true, api_name: "NetAmount"
        field :fee_amount, -> { Integer }, optional: false, nullable: true, api_name: "FeeAmount"
        field :settlement_status, -> { Integer }, optional: false, nullable: true, api_name: "SettlementStatus"
        field :operation, -> { String }, optional: false, nullable: true, api_name: "Operation"
        field :response_data, lambda {
          Payabli::Types::QueryResponseData
        }, optional: false, nullable: true, api_name: "ResponseData"
        field :source, -> { String }, optional: false, nullable: true, api_name: "Source"
        field :schedule_reference, -> { Integer }, optional: false, nullable: true, api_name: "ScheduleReference"
        field :org_id, -> { Integer }, optional: false, nullable: true, api_name: "OrgId"
        field :refund_id, -> { Integer }, optional: false, nullable: true, api_name: "RefundId"
        field :returned_id, -> { Integer }, optional: false, nullable: true, api_name: "ReturnedId"
        field :chargeback_id, -> { Integer }, optional: false, nullable: true, api_name: "ChargebackId"
        field :retrieval_id, -> { Integer }, optional: false, nullable: true, api_name: "RetrievalId"
        field :trans_additional_data, lambda {
          Internal::Types::Hash[String, Object]
        }, optional: false, nullable: true, api_name: "TransAdditionalData"
        field :invoice_data, -> { Payabli::Types::BillData }, optional: false, nullable: true, api_name: "invoiceData"
        field :entrypage_id, -> { Integer }, optional: false, nullable: true, api_name: "EntrypageId"
        field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointID"
        field :is_validated_ach, lambda {
          Internal::Types::Boolean
        }, optional: false, nullable: true, api_name: "IsValidatedACH"
        field :transaction_time, -> { String }, optional: false, nullable: true, api_name: "TransactionTime"
        field :customer, lambda {
          Payabli::Types::QueryTransactionPayorData
        }, optional: false, nullable: true, api_name: "Customer"
        field :split_funding_instructions, lambda {
          Internal::Types::Array[Payabli::Types::SplitFundingContent]
        }, optional: false, nullable: true, api_name: "splitFundingInstructions"
        field :cfee_transactions, lambda {
          Internal::Types::Array[Payabli::Types::QueryCFeeTransaction]
        }, optional: false, nullable: true, api_name: "CfeeTransactions"
        field :transaction_events, lambda {
          Internal::Types::Array[Payabli::Types::QueryTransactionEvents]
        }, optional: false, nullable: true, api_name: "TransactionEvents"
        field :pending_fee_amount, -> { Integer }, optional: false, nullable: true, api_name: "PendingFeeAmount"
        field :risk_flagged, -> { Internal::Types::Boolean }, optional: false, nullable: true, api_name: "RiskFlagged"
        field :risk_flagged_on, -> { String }, optional: false, nullable: true, api_name: "RiskFlaggedOn"
        field :risk_status, -> { String }, optional: false, nullable: true, api_name: "RiskStatus"
        field :risk_reason, -> { String }, optional: false, nullable: true, api_name: "RiskReason"
        field :risk_action, -> { String }, optional: false, nullable: true, api_name: "RiskAction"
        field :risk_action_code, -> { Integer }, optional: false, nullable: true, api_name: "RiskActionCode"
        field :device_id, -> { String }, optional: false, nullable: true, api_name: "DeviceId"
        field :ach_sec_code, -> { String }, optional: false, nullable: true, api_name: "AchSecCode"
        field :ach_holder_type, lambda {
          Payabli::Types::AchHolderType
        }, optional: false, nullable: true, api_name: "AchHolderType"
        field :ip_address, -> { String }, optional: false, nullable: true, api_name: "IpAddress"
        field :is_same_day_ach, lambda {
          Internal::Types::Boolean
        }, optional: false, nullable: true, api_name: "IsSameDayACH"
        field :wallet_type, -> { String }, optional: false, nullable: true, api_name: "WalletType"
      end
    end
  end
end
