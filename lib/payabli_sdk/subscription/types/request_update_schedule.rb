# frozen_string_literal: true

module PayabliSdk
  module Subscription
    module Types
      class RequestUpdateSchedule < Internal::Types::Model
        field :sub_id, -> { Integer }, optional: false, nullable: false, api_name: "subId"
        field :payment_details, -> { PayabliSdk::Types::PaymentDetail }, optional: true, nullable: false, api_name: "paymentDetails"
        field :schedule_details, -> { PayabliSdk::Types::ScheduleDetail }, optional: true, nullable: false, api_name: "scheduleDetails"
        field :set_pause, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "setPause"
      end
    end
  end
end
