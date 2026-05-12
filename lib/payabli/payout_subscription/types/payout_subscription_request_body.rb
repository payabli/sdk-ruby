# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class PayoutSubscriptionRequestBody < Internal::Types::Model
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"

        field :subdomain, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"

        field :source, -> { String }, optional: true, nullable: false

        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"

        field :payment_method, -> { Payabli::MoneyOutTypes::Types::AuthorizePaymentMethod }, optional: false, nullable: false, api_name: "paymentMethod"

        field :payment_details, -> { Payabli::PayoutSubscription::Types::PayoutPaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"

        field :vendor_data, -> { Payabli::MoneyOutTypes::Types::RequestOutAuthorizeVendorData }, optional: false, nullable: false, api_name: "vendorData"

        field :bill_data, -> { Internal::Types::Array[Payabli::Types::BillPayOutDataRequest] }, optional: true, nullable: false, api_name: "billData"

        field :schedule_details, -> { Payabli::PayoutSubscription::Types::PayoutScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
      end
    end
  end
end
