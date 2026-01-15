# frozen_string_literal: true

module PayabliSdk
  module Ocr
    module Types
      class OcrResultData < Internal::Types::Model
        field :bill_number, -> { String }, optional: true, nullable: false, api_name: "billNumber"
        field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "netAmount"
        field :bill_date, -> { String }, optional: true, nullable: false, api_name: "billDate"
        field :due_date, -> { String }, optional: true, nullable: false, api_name: "dueDate"
        field :comments, -> { String }, optional: true, nullable: false
        field :bill_items, -> { Internal::Types::Array[PayabliSdk::Ocr::Types::OcrBillItem] }, optional: true, nullable: false, api_name: "billItems"
        field :mode, -> { Integer }, optional: true, nullable: false
        field :accounting_field_1, -> { String }, optional: true, nullable: false, api_name: "accountingField1"
        field :accounting_field_2, -> { String }, optional: true, nullable: false, api_name: "accountingField2"
        field :additional_data, -> { PayabliSdk::Ocr::Types::OcrBillItemAdditionalData }, optional: true, nullable: false, api_name: "additionalData"
        field :vendor, -> { PayabliSdk::Ocr::Types::OcrVendor }, optional: true, nullable: false
        field :end_date, -> { String }, optional: true, nullable: false, api_name: "endDate"
        field :frequency, -> { String }, optional: true, nullable: false
        field :terms, -> { String }, optional: true, nullable: false
        field :status, -> { Integer }, optional: true, nullable: false
        field :lot_number, -> { String }, optional: true, nullable: false, api_name: "lotNumber"
        field :attachments, -> { Internal::Types::Array[PayabliSdk::Ocr::Types::OcrAttachment] }, optional: true, nullable: false
      end
    end
  end
end
