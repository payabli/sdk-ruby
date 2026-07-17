# frozen_string_literal: true

module Payabli
  module Types
    class BillPayOutData < Internal::Types::Model
      field :bill_id, -> { Integer }, optional: true, nullable: false, api_name: "billId"

      field :lot_number, -> { String }, optional: true, nullable: false, api_name: "LotNumber"

      field :accounting_field_1, -> { String }, optional: true, nullable: false, api_name: "AccountingField1"

      field :accounting_field_2, -> { String }, optional: true, nullable: false, api_name: "AccountingField2"

      field :terms, -> { Payabli::Types::Terms }, optional: true, nullable: false, api_name: "Terms"

      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "AdditionalData"

      field :attachments, -> { Internal::Types::Array[Payabli::Types::FileContent] }, optional: true, nullable: false

      field :invoice_number, -> { String }, optional: true, nullable: false, api_name: "invoiceNumber"

      field :net_amount, -> { String }, optional: true, nullable: false, api_name: "netAmount"

      field :invoice_date, -> { String }, optional: false, nullable: true, api_name: "invoiceDate"

      field :due_date, -> { String }, optional: false, nullable: true, api_name: "dueDate"

      field :comments, -> { String }, optional: true, nullable: false

      field :identifier, -> { String }, optional: true, nullable: false

      field :discount, -> { String }, optional: true, nullable: false

      field :total_amount, -> { String }, optional: true, nullable: false, api_name: "totalAmount"
    end
  end
end
