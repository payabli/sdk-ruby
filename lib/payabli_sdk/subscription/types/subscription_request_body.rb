# frozen_string_literal: true

module PayabliSdk
  module Subscription
    module Types
      class SubscriptionRequestBody < Internal::Types::Model
        field :customer_data, -> { PayabliSdk::Types::PayorDataRequest }, optional: true, nullable: false, api_name: "customerData"
        field :entry_point, -> { String }, optional: true, nullable: false, api_name: "entryPoint"
        field :invoice_data, -> { PayabliSdk::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
        field :payment_details, -> { PayabliSdk::Types::PaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"
        field :payment_method, -> { PayabliSdk::Subscription::Types::RequestSchedulePaymentMethod }, optional: true, nullable: false, api_name: "paymentMethod"
        field :schedule_details, -> { PayabliSdk::Types::ScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
      end
    end
  end
end
