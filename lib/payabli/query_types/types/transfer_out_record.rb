# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # A record representing an outbound transfer.
      class TransferOutRecord < Internal::Types::Model
        field :transfer_id, -> { Integer }, optional: false, nullable: true, api_name: "transferId"
        field :paypoint_id, -> { Integer }, optional: false, nullable: true, api_name: "paypointId"
        field :batch_number, -> { String }, optional: false, nullable: true, api_name: "batchNumber"
        field :batch_currency, -> { String }, optional: false, nullable: true, api_name: "batchCurrency"
        field :batch_records, -> { Integer }, optional: false, nullable: true, api_name: "batchRecords"
        field :transfer_identifier, -> { String }, optional: false, nullable: true, api_name: "transferIdentifier"
        field :batch_id, -> { Integer }, optional: false, nullable: true, api_name: "batchId"
        field :batch_net_amount, -> { Integer }, optional: false, nullable: true, api_name: "batchNetAmount"
        field :batch_status, -> { Integer }, optional: false, nullable: true, api_name: "batchStatus"
        field :paypoint_entry_name, -> { String }, optional: false, nullable: true, api_name: "paypointEntryName"
        field :paypoint_legal_name, -> { String }, optional: false, nullable: true, api_name: "paypointLegalName"
        field :paypoint_dba_name, -> { String }, optional: false, nullable: true, api_name: "paypointDbaName"
        field :paypoint_logo, -> { String }, optional: false, nullable: true, api_name: "paypointLogo"
        field :parent_org_name, -> { String }, optional: false, nullable: true, api_name: "parentOrgName"
        field :parent_org_id, -> { Integer }, optional: false, nullable: true, api_name: "parentOrgId"
        field :parent_org_logo, -> { String }, optional: false, nullable: true, api_name: "parentOrgLogo"
        field :parent_org_entry_name, -> { String }, optional: false, nullable: true, api_name: "parentOrgEntryName"
        field :external_paypoint_id, -> { String }, optional: false, nullable: true, api_name: "externalPaypointID"
        field :bank_account, -> { Payabli::QueryTypes::Types::TransferOutBankAccount }, optional: false, nullable: true, api_name: "bankAccount"
        field :transfer_date, -> { String }, optional: false, nullable: true, api_name: "transferDate"
        field :processor, -> { String }, optional: false, nullable: true
        field :transfer_status, -> { Integer }, optional: false, nullable: true, api_name: "transferStatus"
        field :gross_amount, -> { Integer }, optional: false, nullable: true, api_name: "grossAmount"
        field :charge_back_amount, -> { Integer }, optional: false, nullable: true, api_name: "chargeBackAmount"
        field :returned_amount, -> { Integer }, optional: false, nullable: true, api_name: "returnedAmount"
        field :hold_amount, -> { Integer }, optional: false, nullable: true, api_name: "holdAmount"
        field :released_amount, -> { Integer }, optional: false, nullable: true, api_name: "releasedAmount"
        field :billing_fees_amount, -> { Integer }, optional: false, nullable: true, api_name: "billingFeesAmount"
        field :third_party_paid_amount, -> { Integer }, optional: false, nullable: true, api_name: "thirdPartyPaidAmount"
        field :adjustments_amount, -> { Integer }, optional: false, nullable: true, api_name: "adjustmentsAmount"
        field :net_transfer_amount, -> { Integer }, optional: false, nullable: true, api_name: "netTransferAmount"
        field :split_amount, -> { Integer }, optional: false, nullable: true, api_name: "splitAmount"
        field :events_data, -> { Internal::Types::Array[Payabli::QueryTypes::Types::TransferOutEventData] }, optional: false, nullable: true, api_name: "eventsData"
        field :messages, -> { Internal::Types::Array[Payabli::QueryTypes::Types::TransferOutMessage] }, optional: false, nullable: true
      end
    end
  end
end
