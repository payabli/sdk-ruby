# frozen_string_literal: true

module Payabli
  module Bill
    module Types
      class BillResponseData < Internal::Types::Model
        field :id_bill, -> { Integer }, optional: true, nullable: false, api_name: "IdBill"
        field :bill_number, -> { String }, optional: true, nullable: false, api_name: "BillNumber"
        field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "NetAmount"
        field :discount, -> { Integer }, optional: true, nullable: false, api_name: "Discount"
        field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "TotalAmount"
        field :bill_date, -> { String }, optional: true, nullable: false, api_name: "BillDate"
        field :due_date, -> { String }, optional: true, nullable: false, api_name: "DueDate"
        field :comments, -> { String }, optional: true, nullable: false, api_name: "Comments"
        field :batch_number, -> { String }, optional: true, nullable: false, api_name: "BatchNumber"
        field :bill_items, -> { Internal::Types::Array[Payabli::Types::BillItem] }, optional: true, nullable: false, api_name: "BillItems"
        field :mode, -> { Integer }, optional: true, nullable: false, api_name: "Mode"
        field :payment_method, -> { String }, optional: true, nullable: false, api_name: "PaymentMethod"
        field :payment_id, -> { String }, optional: true, nullable: false, api_name: "PaymentId"
        field :accounting_field_1, -> { String }, optional: true, nullable: false, api_name: "AccountingField1"
        field :accounting_field_2, -> { String }, optional: true, nullable: false, api_name: "AccountingField2"
        field :terms, -> { String }, optional: true, nullable: false, api_name: "Terms"
        field :source, -> { String }, optional: true, nullable: false, api_name: "Source"
        field :additional_data, -> { String }, optional: true, nullable: false, api_name: "AdditionalData"
        field :vendor, -> { Payabli::Types::VendorDataResponse }, optional: true, nullable: false, api_name: "Vendor"
        field :status, -> { Integer }, optional: true, nullable: false, api_name: "Status"
        field :created_at, -> { String }, optional: true, nullable: false, api_name: "CreatedAt"
        field :end_date, -> { String }, optional: true, nullable: false, api_name: "EndDate"
        field :last_updated, -> { String }, optional: true, nullable: false, api_name: "LastUpdated"
        field :frequency, -> { Payabli::Types::Frequency }, optional: true, nullable: false, api_name: "Frequency"
        field :transaction, -> { Payabli::Types::TransactionOutQueryRecord }, optional: true, nullable: false, api_name: "Transaction"
        field :bill_events, -> { Internal::Types::Array[Payabli::Types::GeneralEvents] }, optional: true, nullable: false, api_name: "billEvents"
        field :bill_approvals, -> { Internal::Types::Array[Payabli::Types::BillQueryRecord2BillApprovalsItem] }, optional: true, nullable: false, api_name: "billApprovals"
        field :paypoint_legalname, -> { String }, optional: true, nullable: false, api_name: "PaypointLegalname"
        field :paypoint_dbaname, -> { String }, optional: true, nullable: false, api_name: "PaypointDbaname"
        field :parent_org_id, -> { Integer }, optional: true, nullable: false, api_name: "ParentOrgId"
        field :parent_org_name, -> { String }, optional: true, nullable: false, api_name: "ParentOrgName"
        field :paypoint_entryname, -> { String }, optional: true, nullable: false, api_name: "PaypointEntryname"
        field :paylink_id, -> { String }, optional: true, nullable: false, api_name: "paylinkId"
        field :documents_ref, -> { Payabli::Types::DocumentsRef }, optional: true, nullable: false, api_name: "DocumentsRef"
        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
        field :lot_number, -> { String }, optional: true, nullable: false, api_name: "LotNumber"
        field :entity_id, -> { Integer }, optional: true, nullable: false, api_name: "EntityID"
      end
    end
  end
end
