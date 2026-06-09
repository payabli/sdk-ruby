# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class UpdatePayoutSubscriptionBody < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false

        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"

        field :payment_details, -> { Payabli::Types::PayoutPaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"

        field :payment_method, -> { Payabli::Types::AuthorizePaymentMethod }, optional: true, nullable: false, api_name: "paymentMethod"

        field :schedule_details, -> { Payabli::Types::PayoutScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
      end
    end
  end
end
