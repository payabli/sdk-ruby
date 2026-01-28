# frozen_string_literal: true

module Payabli
  module Types
    class FrequencyList < Internal::Types::Model
      field :annually, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :every_2_weeks, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "every2Weeks"
      field :every_3_months, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "every3Months"
      field :every_6_months, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "every6Months"
      field :monthly, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :onetime, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :weekly, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
