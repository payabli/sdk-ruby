# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class QueryBatchesResponseRecordsItem < Internal::Types::Model
        field :id_batch, -> { Integer }, optional: false, nullable: true, api_name: "IdBatch"
        field :batch_number, -> { String }, optional: false, nullable: true, api_name: "BatchNumber"
        field :transfer_identifier, -> { String }, optional: false, nullable: true, api_name: "TransferIdentifier"
        field :events_data, lambda {
          Internal::Types::Array[Payabli::Types::GeneralEvents]
        }, optional: false, nullable: true, api_name: "EventsData"
        field :connector_name, -> { String }, optional: false, nullable: true, api_name: "ConnectorName"
        field :batch_date, -> { String }, optional: false, nullable: true, api_name: "BatchDate"
        field :batch_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchAmount"
        field :batch_fees_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchFeesAmount"
        field :batch_auth_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchAuthAmount"
        field :batch_released_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchReleasedAmount"
        field :batch_hold_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchHoldAmount"
        field :batch_returned_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchReturnedAmount"
        field :batch_refund_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchRefundAmount"
        field :batch_split_amount, -> { Integer }, optional: false, nullable: true, api_name: "BatchSplitAmount"
        field :batch_status, -> { Integer }, optional: false, nullable: false, api_name: "BatchStatus"
        field :batch_records, -> { Integer }, optional: false, nullable: false, api_name: "BatchRecords"
        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "PaypointId"
        field :paypoint_name, -> { String }, optional: false, nullable: true, api_name: "PaypointName"
        field :paypoint_dba, -> { String }, optional: false, nullable: true, api_name: "PaypointDba"
        field :parent_org_name, -> { String }, optional: false, nullable: false, api_name: "ParentOrgName"
        field :parent_org_id, -> { Integer }, optional: false, nullable: false, api_name: "ParentOrgId"
        field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointID"
        field :entry_name, -> { String }, optional: false, nullable: false, api_name: "EntryName"
        field :bank_name, -> { String }, optional: false, nullable: true, api_name: "BankName"
        field :batch_type, -> { Integer }, optional: false, nullable: true, api_name: "BatchType"
        field :method_, -> { String }, optional: false, nullable: true, api_name: "Method"
        field :expected_deposit_date, -> { String }, optional: false, nullable: true, api_name: "ExpectedDepositDate"
        field :deposit_date, -> { String }, optional: false, nullable: true, api_name: "DepositDate"
        field :transfer_date, -> { String }, optional: false, nullable: true, api_name: "TransferDate"
        field :transfer, lambda {
          Payabli::QueryTypes::Types::QueryBatchesTransfer
        }, optional: false, nullable: true, api_name: "Transfer"
      end
    end
  end
end
