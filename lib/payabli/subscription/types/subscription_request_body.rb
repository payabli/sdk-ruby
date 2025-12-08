# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      class SubscriptionRequestBody < Internal::Types::Model
        field :customer_data, -> { Payabli::Types::PayorDataRequest }, optional: true, nullable: false, api_name: "customerData"
        field :entry_point, -> { String }, optional: true, nullable: false, api_name: "entryPoint"
        field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"
        field :payment_details, -> { Payabli::Types::PaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"
        field :payment_method, -> { Payabli::Subscription::Types::RequestSchedulePaymentMethod }, optional: true, nullable: false, api_name: "paymentMethod"
        field :schedule_details, -> { Payabli::Types::ScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"
        field :source, -> { String }, optional: true, nullable: false
        field :subdomain, -> { String }, optional: true, nullable: false
      end
    end
  end
end
