# frozen_string_literal: true

module PayabliSdk
  module Types
    class ScheduleDetail < Internal::Types::Model
      field :end_date, -> { String }, optional: true, nullable: false, api_name: "endDate"
      field :frequency, -> { PayabliSdk::Types::Frequency }, optional: true, nullable: false
      field :plan_id, -> { Integer }, optional: true, nullable: false, api_name: "planId"
      field :start_date, -> { String }, optional: true, nullable: false, api_name: "startDate"
    end
  end
end
