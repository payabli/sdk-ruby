# frozen_string_literal: true

module PayabliSdk
  module Bill
    module Types
      class BillOutData < Internal::Types::Model
        field :accounting_field_1, -> { String }, optional: true, nullable: false, api_name: "accountingField1"
        field :accounting_field_2, -> { String }, optional: true, nullable: false, api_name: "accountingField2"
        field :additional_data, -> { String }, optional: true, nullable: false, api_name: "additionalData"
        field :attachments, -> { Internal::Types::Array[PayabliSdk::Types::FileContent] }, optional: true, nullable: false
        field :bill_date, -> { String }, optional: true, nullable: false, api_name: "billDate"
        field :bill_items, -> { Internal::Types::Array[PayabliSdk::Types::BillItem] }, optional: true, nullable: false, api_name: "billItems"
        field :bill_number, -> { String }, optional: true, nullable: false, api_name: "billNumber"
        field :comments, -> { String }, optional: true, nullable: false
        field :discount, -> { Integer }, optional: true, nullable: false
        field :due_date, -> { String }, optional: true, nullable: false, api_name: "dueDate"
        field :end_date, -> { String }, optional: true, nullable: false, api_name: "endDate"
        field :frequency, -> { PayabliSdk::Types::Frequency }, optional: true, nullable: false
        field :lot_number, -> { String }, optional: true, nullable: false, api_name: "lotNumber"
        field :mode, -> { Integer }, optional: true, nullable: false
        field :net_amount, -> { Integer }, optional: true, nullable: false, api_name: "netAmount"
        field :scheduled_options, -> { PayabliSdk::Bill::Types::BillOutDataScheduledOptions }, optional: true, nullable: false, api_name: "scheduledOptions"
        field :status, -> { Integer }, optional: true, nullable: false
        field :terms, -> { String }, optional: true, nullable: false
        field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
        field :vendor, -> { PayabliSdk::Types::VendorData }, optional: true, nullable: false
      end
    end
  end
end
