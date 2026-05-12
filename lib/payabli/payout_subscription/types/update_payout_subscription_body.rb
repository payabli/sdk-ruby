# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class UpdatePayoutSubscriptionBody < Internal::Types::Model
        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"

        field :payment_details, -> { Payabli::PayoutSubscription::Types::PayoutPaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"

        field :payment_method, -> { Payabli::MoneyOutTypes::Types::AuthorizePaymentMethod }, optional: true, nullable: false, api_name: "paymentMethod"

        field :schedule_details, -> { Payabli::PayoutSubscription::Types::PayoutScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
      end
    end
  end
end
