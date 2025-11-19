# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      class RequestOutAuthorizeInvoiceData < Internal::Types::Model
        field :invoice_number, -> { String }, optional: true, nullable: false, api_name: "invoiceNumber"
        field :net_amount, -> { String }, optional: true, nullable: false, api_name: "netAmount"
        field :invoice_date, -> { String }, optional: true, nullable: false, api_name: "invoiceDate"
        field :due_date, -> { String }, optional: true, nullable: false, api_name: "dueDate"
        field :comments, -> { String }, optional: true, nullable: false
        field :lot_number, -> { String }, optional: true, nullable: false, api_name: "lotNumber"
        field :bill_id, -> { Integer }, optional: true, nullable: false, api_name: "billId"
        field :discount, -> { Integer }, optional: true, nullable: false
        field :terms, -> { String }, optional: true, nullable: false
        field :accounting_field_1, -> { String }, optional: true, nullable: false, api_name: "accountingField1"
        field :accounting_field_2, -> { String }, optional: true, nullable: false, api_name: "accountingField2"
        field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
        field :attachments, -> { Internal::Types::Array[Payabli::Types::FileContent] }, optional: true, nullable: false
      end
    end
  end
end
