# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      # Invoice information if transaction is associated with an invoice
      class TransactionDetailInvoiceData < Internal::Types::Model
        field :invoice_number, -> { String }, optional: false, nullable: true, api_name: "invoiceNumber"
        field :invoice_date, -> { String }, optional: false, nullable: true, api_name: "invoiceDate"
        field :invoice_due_date, -> { String }, optional: false, nullable: true, api_name: "invoiceDueDate"
        field :invoice_end_date, -> { String }, optional: false, nullable: true, api_name: "invoiceEndDate"
        field :invoice_status, -> { Integer }, optional: false, nullable: true, api_name: "invoiceStatus"
        field :invoice_type, -> { Integer }, optional: false, nullable: true, api_name: "invoiceType"
        field :frequency, -> { PayabliSdk::Types::Frequency }, optional: false, nullable: true
        field :payment_terms, -> { String }, optional: false, nullable: true, api_name: "paymentTerms"
        field :terms_conditions, -> { String }, optional: false, nullable: true, api_name: "termsConditions"
        field :notes, -> { String }, optional: false, nullable: true
        field :tax, -> { Integer }, optional: false, nullable: true
        field :discount, -> { Integer }, optional: false, nullable: true
        field :invoice_amount, -> { Integer }, optional: false, nullable: true, api_name: "invoiceAmount"
        field :freight_amount, -> { Integer }, optional: false, nullable: true, api_name: "freightAmount"
        field :duty_amount, -> { Integer }, optional: false, nullable: true, api_name: "dutyAmount"
        field :purchase_order, -> { String }, optional: false, nullable: true, api_name: "purchaseOrder"
        field :first_name, -> { String }, optional: false, nullable: true, api_name: "firstName"
        field :last_name, -> { String }, optional: false, nullable: true, api_name: "lastName"
        field :company, -> { String }, optional: false, nullable: true
        field :shipping_address_1, -> { String }, optional: false, nullable: true, api_name: "shippingAddress1"
        field :shipping_address_2, -> { String }, optional: false, nullable: true, api_name: "shippingAddress2"
        field :shipping_city, -> { String }, optional: false, nullable: true, api_name: "shippingCity"
        field :shipping_state, -> { String }, optional: false, nullable: true, api_name: "shippingState"
        field :shipping_zip, -> { String }, optional: false, nullable: true, api_name: "shippingZip"
        field :shipping_country, -> { String }, optional: false, nullable: true, api_name: "shippingCountry"
        field :shipping_email, -> { String }, optional: false, nullable: true, api_name: "shippingEmail"
        field :shipping_phone, -> { String }, optional: false, nullable: true, api_name: "shippingPhone"
        field :shipping_from_zip, -> { String }, optional: false, nullable: true, api_name: "shippingFromZip"
        field :summary_commodity_code, -> { String }, optional: false, nullable: true, api_name: "summaryCommodityCode"
        field :items, -> { Internal::Types::Array[PayabliSdk::Types::BillItem] }, optional: false, nullable: true
        field :attachments, -> { Internal::Types::Array[PayabliSdk::Types::FileContent] }, optional: false, nullable: true
        field :additional_data, -> { String }, optional: false, nullable: true, api_name: "additionalData"
      end
    end
  end
end
