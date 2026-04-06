# frozen_string_literal: true

module Payabli
  module PayoutSubscription
    module Types
      class PayoutScheduleDetail < Internal::Types::Model
        field :start_date, -> { String }, optional: true, nullable: false, api_name: "startDate"
        field :end_date, -> { String }, optional: true, nullable: false, api_name: "endDate"
        field :frequency, -> { Payabli::Types::Frequency }, optional: true, nullable: false
      end
    end
  end
end
