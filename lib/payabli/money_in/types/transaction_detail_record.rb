# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Complete transaction details including payment information, customer data, and processing metadata. This is
      # returned when includeDetails=true.
      class TransactionDetailRecord < Internal::Types::Model
        field :parent_org_name, -> { String }, optional: false, nullable: false, api_name: "parentOrgName"
        field :paypoint_dbaname, -> { String }, optional: false, nullable: false, api_name: "paypointDbaname"
        field :paypoint_legalname, -> { String }, optional: false, nullable: false, api_name: "paypointLegalname"
        field :paypoint_entryname, -> { String }, optional: false, nullable: false, api_name: "paypointEntryname"
        field :payment_trans_id, -> { String }, optional: false, nullable: false, api_name: "paymentTransId"
        field :connector_name, -> { String }, optional: false, nullable: false, api_name: "connectorName"
        field :external_processor_information, -> { String }, optional: false, nullable: false, api_name: "externalProcessorInformation"
        field :gateway_trans_id, -> { String }, optional: false, nullable: false, api_name: "gatewayTransId"
        field :order_id, -> { String }, optional: false, nullable: true, api_name: "orderId"
        field :method_, -> { Payabli::MoneyIn::Types::TransactionDetailRecordMethod }, optional: false, nullable: false, api_name: "method"
        field :batch_number, -> { String }, optional: false, nullable: false, api_name: "batchNumber"
        field :batch_amount, -> { Integer }, optional: false, nullable: false, api_name: "batchAmount"
        field :payor_id, -> { Integer }, optional: false, nullable: false, api_name: "payorId"
        field :payment_data, -> { Payabli::MoneyIn::Types::TransactionDetailPaymentData }, optional: false, nullable: false, api_name: "paymentData"
        field :trans_status, -> { Integer }, optional: false, nullable: false, api_name: "transStatus"
        field :paypoint_id, -> { Integer }, optional: false, nullable: false, api_name: "paypointId"
        field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
        field :net_amount, -> { Integer }, optional: false, nullable: false, api_name: "netAmount"
        field :fee_amount, -> { Integer }, optional: false, nullable: false, api_name: "feeAmount"
        field :settlement_status, -> { Integer }, optional: false, nullable: false, api_name: "settlementStatus"
        field :operation, -> { String }, optional: false, nullable: false
        field :response_data, -> { Payabli::MoneyIn::Types::TransactionDetailResponseData }, optional: false, nullable: false, api_name: "responseData"
        field :source, -> { String }, optional: false, nullable: false
        field :schedule_reference, -> { Integer }, optional: false, nullable: false, api_name: "scheduleReference"
        field :org_id, -> { Integer }, optional: false, nullable: false, api_name: "orgId"
        field :refund_id, -> { Integer }, optional: false, nullable: false, api_name: "refundId"
        field :returned_id, -> { Integer }, optional: false, nullable: false, api_name: "returnedId"
        field :chargeback_id, -> { Integer }, optional: false, nullable: false, api_name: "chargebackId"
        field :retrieval_id, -> { Integer }, optional: false, nullable: false, api_name: "retrievalId"
        field :trans_additional_data, -> { Object }, optional: false, nullable: true, api_name: "transAdditionalData"
        field :invoice_data, -> { Payabli::MoneyIn::Types::TransactionDetailInvoiceData }, optional: false, nullable: false, api_name: "invoiceData"
        field :entrypage_id, -> { Integer }, optional: false, nullable: false, api_name: "entrypageId"
        field :external_paypoint_id, -> { String }, optional: false, nullable: false, api_name: "externalPaypointID"
        field :is_validated_ach, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isValidatedACH"
        field :transaction_time, -> { String }, optional: false, nullable: false, api_name: "transactionTime"
        field :customer, -> { Payabli::MoneyIn::Types::TransactionDetailCustomer }, optional: false, nullable: false
        field :split_funding_instructions, -> { Internal::Types::Array[Payabli::Types::SplitFundingContent] }, optional: false, nullable: true, api_name: "splitFundingInstructions"
        field :cfee_transactions, -> { Internal::Types::Array[Payabli::Types::QueryCFeeTransaction] }, optional: false, nullable: false, api_name: "cfeeTransactions"
        field :transaction_events, -> { Internal::Types::Array[Payabli::MoneyIn::Types::TransactionDetailEvent] }, optional: false, nullable: false, api_name: "transactionEvents"
        field :pending_fee_amount, -> { Integer }, optional: false, nullable: false, api_name: "pendingFeeAmount"
        field :risk_flagged, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "riskFlagged"
        field :risk_flagged_on, -> { String }, optional: false, nullable: false, api_name: "riskFlaggedOn"
        field :risk_status, -> { String }, optional: false, nullable: false, api_name: "riskStatus"
        field :risk_reason, -> { String }, optional: false, nullable: false, api_name: "riskReason"
        field :risk_action, -> { String }, optional: false, nullable: false, api_name: "riskAction"
        field :risk_action_code, -> { Integer }, optional: false, nullable: false, api_name: "riskActionCode"
        field :device_id, -> { String }, optional: false, nullable: false, api_name: "deviceId"
        field :ach_sec_code, -> { String }, optional: false, nullable: false, api_name: "achSecCode"
        field :ach_holder_type, -> { Payabli::Types::AchHolderType }, optional: false, nullable: false, api_name: "achHolderType"
        field :ip_address, -> { String }, optional: false, nullable: false, api_name: "ipAddress"
        field :is_same_day_ach, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSameDayACH"
        field :wallet_type, -> { String }, optional: false, nullable: true, api_name: "walletType"
      end
    end
  end
end
