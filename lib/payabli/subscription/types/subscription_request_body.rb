# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      class SubscriptionRequestBody < Internal::Types::Model
        field :customer_data, lambda {
          Payabli::Types::PayorDataRequest
        }, optional: true, nullable: false, api_name: "customerData"
        field :entry_point, -> { String }, optional: true, nullable: false, api_name: "entryPoint"
        field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
        field :payment_details, lambda {
          Payabli::Types::PaymentDetail
        }, optional: true, nullable: false, api_name: "paymentDetails"
        field :payment_method, lambda {
          Payabli::Subscription::Types::RequestSchedulePaymentMethod
        }, optional: true, nullable: false, api_name: "paymentMethod"
        field :schedule_details, lambda {
          Payabli::Types::ScheduleDetail
        }, optional: true, nullable: false, api_name: "scheduleDetails"
        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
      end
    end
  end
end
