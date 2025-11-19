# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      class AuthorizePayoutBody < Internal::Types::Model
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"
        field :source, -> { String }, optional: true, nullable: false
        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"
        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"
        field :payment_method, lambda {
          Payabli::MoneyOutTypes::Types::AuthorizePaymentMethod
        }, optional: false, nullable: false, api_name: "paymentMethod"
        field :payment_details, lambda {
          Payabli::MoneyOutTypes::Types::RequestOutAuthorizePaymentDetails
        }, optional: false, nullable: false, api_name: "paymentDetails"
        field :vendor_data, lambda {
          Payabli::MoneyOutTypes::Types::RequestOutAuthorizeVendorData
        }, optional: false, nullable: false, api_name: "vendorData"
        field :invoice_data, lambda {
          Internal::Types::Array[Payabli::MoneyOutTypes::Types::RequestOutAuthorizeInvoiceData]
        }, optional: false, nullable: false, api_name: "invoiceData"
        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
        field :subdomain, -> { String }, optional: true, nullable: false
        field :subscription_id, -> { Integer }, optional: true, nullable: false, api_name: "subscriptionId"
      end
    end
  end
end
