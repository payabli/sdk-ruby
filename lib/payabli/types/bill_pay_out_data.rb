# frozen_string_literal: true

module Payabli
  module Types
    class BillPayOutData < Internal::Types::Model
      field :bill_id, -> { Integer }, optional: true, nullable: false, api_name: "billId"
      field :comments, -> { String }, optional: true, nullable: false
      field :due_date, -> { String }, optional: true, nullable: false, api_name: "dueDate"
      field :invoice_date, -> { String }, optional: true, nullable: false, api_name: "invoiceDate"
      field :invoice_number, -> { String }, optional: true, nullable: false, api_name: "invoiceNumber"
      field :net_amount, -> { String }, optional: true, nullable: false, api_name: "netAmount"
      field :discount, -> { String }, optional: true, nullable: false
      field :terms, -> { String }, optional: true, nullable: false, api_name: "Terms"
      field :accounting_field_1, -> { String }, optional: true, nullable: false, api_name: "AccountingField1"
      field :accounting_field_2, -> { String }, optional: true, nullable: false, api_name: "AccountingField2"
      field :additional_data, -> { String }, optional: true, nullable: false, api_name: "AdditionalData"
      field :attachments, -> { Internal::Types::Array[Payabli::Types::FileContent] }, optional: true, nullable: false
    end
  end
end
