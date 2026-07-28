# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class RequestOutAuthorize < Internal::Types::Model
        field :allow_duplicated_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "allowDuplicatedBills"

        field :do_not_create_bills, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "doNotCreateBills"

        field :force_vendor_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceVendorCreation"

        field :same_day_ach, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sameDayACH"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"

        field :source, -> { String }, optional: true, nullable: false

        field :order_id, -> { String }, optional: true, nullable: false, api_name: "orderId"

        field :order_description, -> { String }, optional: true, nullable: false, api_name: "orderDescription"

        field :payment_method, -> { Payabli::Types::AuthorizePaymentMethod }, optional: false, nullable: false, api_name: "paymentMethod"

        field :payment_details, -> { Payabli::Types::RequestOutAuthorizePaymentDetails }, optional: false, nullable: false, api_name: "paymentDetails"

        field :vendor_data, -> { Payabli::Types::RequestOutAuthorizeVendorData }, optional: false, nullable: false, api_name: "vendorData"

        field :invoice_data, -> { Internal::Types::Array[Payabli::Types::RequestOutAuthorizeInvoiceData] }, optional: false, nullable: false, api_name: "invoiceData"

        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"

        field :subdomain, -> { String }, optional: true, nullable: false

        field :subscription_id, -> { Integer }, optional: true, nullable: false, api_name: "subscriptionId"

        field :auto_capture, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "autoCapture"
      end
    end
  end
end
