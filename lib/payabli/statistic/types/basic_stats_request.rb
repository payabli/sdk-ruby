# frozen_string_literal: true

module Payabli
  module Statistic
    module Types
      class BasicStatsRequest < Internal::Types::Model
        field :entry_id, -> { Integer }, optional: false, nullable: false, api_name: "entryId"
        field :freq, -> { String }, optional: false, nullable: false
        field :level, -> { Integer }, optional: false, nullable: false
        field :mode, -> { String }, optional: false, nullable: false
        field :end_date, -> { String }, optional: true, nullable: false, api_name: "endDate"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
        field :start_date, -> { String }, optional: true, nullable: false, api_name: "startDate"
      end
    end
  end
end
