# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Bill information for an outbound transfer detail.
      class TransferOutDetailBill < Internal::Types::Model
        field :bill_id, -> { Integer }, optional: false, nullable: true, api_name: "billId"
        field :lot_number, -> { String }, optional: false, nullable: true, api_name: "LotNumber"
        field :accounting_field_1, -> { String }, optional: false, nullable: true, api_name: "AccountingField1"
        field :accounting_field_2, -> { String }, optional: false, nullable: true, api_name: "AccountingField2"
        field :terms, -> { String }, optional: false, nullable: true, api_name: "Terms"
        field :additional_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "AdditionalData"
        field :attachments, -> { Internal::Types::Array[Payabli::QueryTypes::Types::TransferOutDetailBillAttachment] }, optional: false, nullable: true
        field :invoice_number, -> { String }, optional: false, nullable: true, api_name: "invoiceNumber"
        field :net_amount, -> { String }, optional: false, nullable: true, api_name: "netAmount"
        field :invoice_date, -> { String }, optional: false, nullable: true, api_name: "invoiceDate"
        field :due_date, -> { String }, optional: false, nullable: true, api_name: "dueDate"
        field :comments, -> { String }, optional: false, nullable: true
        field :identifier, -> { String }, optional: false, nullable: true
        field :discount, -> { Integer }, optional: false, nullable: true
        field :total_amount, -> { Integer }, optional: false, nullable: true, api_name: "totalAmount"
      end
    end
  end
end
