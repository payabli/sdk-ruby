# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryChargebacksResponseRecordsItem < Internal::Types::Model
      field :account_type, -> { String }, optional: true, nullable: false, api_name: "AccountType"
      field :case_number, -> { String }, optional: true, nullable: false, api_name: "CaseNumber"
      field :chargeback_date, -> { String }, optional: true, nullable: false, api_name: "ChargebackDate"
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "CreatedAt"
      field :customer, -> { PayabliSdk::Types::QueryTransactionPayorData }, optional: true, nullable: false, api_name: "Customer"
      field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
      field :id, -> { Integer }, optional: true, nullable: false, api_name: "Id"
      field :last_four, -> { String }, optional: true, nullable: false, api_name: "LastFour"
      field :method_, -> { String }, optional: true, nullable: false, api_name: "Method"
      field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "NetAmount"
      field :order_id, -> { String }, optional: true, nullable: false, api_name: "OrderId"
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
      field :payment_data, -> { PayabliSdk::Types::QueryPaymentData }, optional: true, nullable: false, api_name: "PaymentData"
      field :payment_trans_id, -> { String }, optional: true, nullable: false, api_name: "PaymentTransId"
      field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
      field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
      field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
      field :reason, -> { String }, optional: true, nullable: false, api_name: "Reason"
      field :reason_code, -> { String }, optional: true, nullable: false, api_name: "ReasonCode"
      field :reference_number, -> { String }, optional: true, nullable: false, api_name: "ReferenceNumber"
      field :reply_by, -> { String }, optional: true, nullable: false, api_name: "ReplyBy"
      field :responses, -> { String }, optional: true, nullable: false, api_name: "Responses"
      field :schedule_reference, -> { Integer }, optional: true, nullable: false, api_name: "ScheduleReference"
      field :status, -> { Integer }, optional: true, nullable: false, api_name: "Status"
      field :transaction, -> { PayabliSdk::Types::TransactionQueryRecords }, optional: true, nullable: false, api_name: "Transaction"
      field :transaction_time, -> { String }, optional: true, nullable: false, api_name: "TransactionTime"
    end
  end
end
