# frozen_string_literal: true

module Payabli
  module Subscription
    module Types
      class RequestSchedule < Internal::Types::Model
        field :force_customer_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceCustomerCreation"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :customer_data, -> { Payabli::Types::PayorDataRequest }, optional: true, nullable: false, api_name: "customerData"

        field :entry_point, -> { String }, optional: true, nullable: false, api_name: "entryPoint"

        field :invoice_data, -> { Payabli::Types::BillData }, optional: true, nullable: false, api_name: "invoiceData"

        field :payment_details, -> { Payabli::Types::PaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"

        field :payment_method, -> { Payabli::Types::RequestSchedulePaymentMethod }, optional: true, nullable: false, api_name: "paymentMethod"

        field :schedule_details, -> { Payabli::Types::ScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"

        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"

        field :source, -> { String }, optional: true, nullable: false

        field :subdomain, -> { String }, optional: true, nullable: false

        field :subscription_type, -> { Payabli::Types::SubscriptionType }, optional: true, nullable: false, api_name: "subscriptionType"
      end
    end
  end
end
