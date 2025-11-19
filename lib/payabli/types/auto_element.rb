# frozen_string_literal: true

module Payabli
  module Types
    class AutoElement < Internal::Types::Model
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :finish, -> { Payabli::Types::Finishtype }, optional: true, nullable: false
      field :frequency, -> { Payabli::Types::FrequencyList }, optional: true, nullable: false
      field :frequency_selected, -> { String }, optional: true, nullable: false, api_name: "frequencySelected"
      field :header, -> { String }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
      field :start_date, -> { String }, optional: true, nullable: false, api_name: "startDate"
    end
  end
end
