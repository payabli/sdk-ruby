# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class RequestPayoutSchedule < Internal::Types::Model
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"

        field :subdomain, -> { String }, optional: true, nullable: false

        field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"

        field :source, -> { String }, optional: true, nullable: false

        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"

        field :payment_method, -> { Payabli::Types::AuthorizePaymentMethod }, optional: false, nullable: false, api_name: "paymentMethod"

        field :payment_details, -> { Payabli::Types::PayoutPaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"

        field :vendor_data, -> { Payabli::Types::RequestOutAuthorizeVendorData }, optional: false, nullable: false, api_name: "vendorData"

        field :bill_data, -> { Internal::Types::Array[Payabli::Types::BillPayOutDataRequest] }, optional: true, nullable: false, api_name: "billData"

        field :schedule_details, -> { Payabli::Types::PayoutScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
      end
    end
  end
end
