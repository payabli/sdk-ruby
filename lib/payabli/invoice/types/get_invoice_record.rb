# frozen_string_literal: true

module Payabli
  module Invoice
    module Types
      class GetInvoiceRecord < Internal::Types::Model
        field :invoice_id, -> { Integer }, optional: false, nullable: false, api_name: "invoiceId"
        field :customer_id, -> { Integer }, optional: false, nullable: false, api_name: "customerId"
        field :paypoint_id, -> { Integer }, optional: false, nullable: false, api_name: "paypointId"
        field :invoice_number, -> { String }, optional: false, nullable: false, api_name: "invoiceNumber"
        field :invoice_date, -> { String }, optional: false, nullable: false, api_name: "invoiceDate"
        field :invoice_due_date, -> { String }, optional: false, nullable: false, api_name: "invoiceDueDate"
        field :invoice_sent_date, -> { String }, optional: false, nullable: false, api_name: "invoiceSentDate"
        field :invoice_end_date, -> { String }, optional: false, nullable: false, api_name: "invoiceEndDate"
        field :last_payment_date, -> { String }, optional: false, nullable: false, api_name: "lastPaymentDate"
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"
        field :invoice_status, -> { Integer }, optional: false, nullable: false, api_name: "invoiceStatus"
        field :invoice_type, -> { Integer }, optional: false, nullable: false, api_name: "invoiceType"
        field :frequency, -> { Payabli::Types::Frequency }, optional: false, nullable: false
        field :payment_terms, -> { String }, optional: false, nullable: false, api_name: "paymentTerms"
        field :terms_conditions, -> { String }, optional: false, nullable: true, api_name: "termsConditions"
        field :notes, -> { String }, optional: false, nullable: true
        field :tax, -> { Integer }, optional: false, nullable: false
        field :discount, -> { Integer }, optional: false, nullable: false
        field :invoice_amount, -> { Integer }, optional: false, nullable: false, api_name: "invoiceAmount"
        field :invoice_paid_amount, -> { Integer }, optional: false, nullable: false, api_name: "invoicePaidAmount"
        field :freight_amount, -> { Integer }, optional: false, nullable: false, api_name: "freightAmount"
        field :duty_amount, -> { Integer }, optional: false, nullable: false, api_name: "dutyAmount"
        field :purchase_order, -> { String }, optional: false, nullable: false, api_name: "purchaseOrder"
        field :first_name, -> { String }, optional: true, nullable: false, api_name: "firstName"
        field :last_name, -> { String }, optional: true, nullable: false, api_name: "lastName"
        field :company, -> { String }, optional: true, nullable: false
        field :shipping_address_1, -> { String }, optional: false, nullable: false, api_name: "shippingAddress1"
        field :shipping_address_2, -> { String }, optional: false, nullable: false, api_name: "shippingAddress2"
        field :shipping_city, -> { String }, optional: false, nullable: false, api_name: "shippingCity"
        field :shipping_state, -> { String }, optional: false, nullable: false, api_name: "shippingState"
        field :shipping_zip, -> { String }, optional: false, nullable: false, api_name: "shippingZip"
        field :shipping_from_zip, -> { String }, optional: false, nullable: false, api_name: "shippingFromZip"
        field :shipping_country, -> { String }, optional: false, nullable: false, api_name: "shippingCountry"
        field :shipping_email, -> { String }, optional: false, nullable: false, api_name: "shippingEmail"
        field :shipping_phone, -> { String }, optional: false, nullable: false, api_name: "shippingPhone"
        field :summary_commodity_code, -> { String }, optional: false, nullable: false, api_name: "summaryCommodityCode"
        field :items, -> { Internal::Types::Array[Payabli::Types::BillItem] }, optional: false, nullable: false
        field :customer, -> { Payabli::Types::PayorDataResponse }, optional: false, nullable: false, api_name: "Customer"
        field :paylink_id, -> { String }, optional: false, nullable: false, api_name: "paylinkId"
        field :bill_events, -> { Internal::Types::Array[Payabli::Types::GeneralEvents] }, optional: false, nullable: false, api_name: "billEvents"
        field :scheduled_options, -> { Payabli::Types::BillOptions }, optional: false, nullable: false, api_name: "scheduledOptions"
        field :paypoint_legalname, -> { String }, optional: false, nullable: false, api_name: "PaypointLegalname"
        field :paypoint_dbaname, -> { String }, optional: false, nullable: false, api_name: "PaypointDbaname"
        field :paypoint_entryname, -> { String }, optional: false, nullable: false, api_name: "PaypointEntryname"
        field :parent_org_name, -> { String }, optional: false, nullable: false, api_name: "ParentOrgName"
        field :additional_data, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false, api_name: "AdditionalData"
        field :documents_ref, -> { Payabli::Types::DocumentsRef }, optional: false, nullable: false, api_name: "DocumentsRef"
        field :external_paypoint_id, -> { String }, optional: true, nullable: false, api_name: "externalPaypointID"
      end
    end
  end
end
