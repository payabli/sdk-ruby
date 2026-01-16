# frozen_string_literal: true

module PayabliSdk
  module Types
    class BillData < Internal::Types::Model
      field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "AdditionalData"
      field :attachments, -> { Internal::Types::Array[PayabliSdk::Types::FileContent] }, optional: true, nullable: false
      field :company, -> { String }, optional: true, nullable: false
      field :discount, -> { Integer }, optional: true, nullable: false
      field :duty_amount, -> { Integer }, optional: true, nullable: false, api_name: "dutyAmount"
      field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"
      field :freight_amount, -> { Integer }, optional: true, nullable: false, api_name: "freightAmount"
      field :frequency, -> { PayabliSdk::Types::Frequency }, optional: true, nullable: false
      field :invoice_amount, -> { Integer }, optional: true, nullable: false, api_name: "invoiceAmount"
      field :invoice_date, -> { String }, optional: true, nullable: false, api_name: "invoiceDate"
      field :invoice_due_date, -> { String }, optional: true, nullable: false, api_name: "invoiceDueDate"
      field :invoice_end_date, -> { String }, optional: true, nullable: false, api_name: "invoiceEndDate"
      field :invoice_number, -> { String }, optional: true, nullable: false, api_name: "invoiceNumber"
      field :invoice_status, -> { Integer }, optional: true, nullable: false, api_name: "invoiceStatus"
      field :invoice_type, -> { Integer }, optional: true, nullable: false, api_name: "invoiceType"
      field :items, -> { Internal::Types::Array[PayabliSdk::Types::BillItem] }, optional: true, nullable: false
      field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"
      field :notes, -> { String }, optional: true, nullable: false
      field :payment_terms, -> { PayabliSdk::Types::BillDataPaymentTerms }, optional: true, nullable: false, api_name: "paymentTerms"
      field :purchase_order, -> { String }, optional: true, nullable: false, api_name: "purchaseOrder"
      field :shipping_address_1, -> { String }, optional: true, nullable: false, api_name: "shippingAddress1"
      field :shipping_address_2, -> { String }, optional: true, nullable: false, api_name: "shippingAddress2"
      field :shipping_city, -> { String }, optional: true, nullable: false, api_name: "shippingCity"
      field :shipping_country, -> { String }, optional: true, nullable: false, api_name: "shippingCountry"
      field :shipping_email, -> { String }, optional: true, nullable: false, api_name: "shippingEmail"
      field :shipping_from_zip, -> { String }, optional: true, nullable: false, api_name: "shippingFromZip"
      field :shipping_phone, -> { String }, optional: true, nullable: false, api_name: "shippingPhone"
      field :shipping_state, -> { String }, optional: true, nullable: false, api_name: "shippingState"
      field :shipping_zip, -> { String }, optional: true, nullable: false, api_name: "shippingZip"
      field :summary_commodity_code, -> { String }, optional: true, nullable: false, api_name: "summaryCommodityCode"
      field :tax, -> { Integer }, optional: true, nullable: false
      field :terms_conditions, -> { String }, optional: true, nullable: false, api_name: "termsConditions"
    end
  end
end
