# frozen_string_literal: true

module Payabli
  module Statistic
    module Types
      class SubStatsRequest < Internal::Types::Model
        field :entry_id, -> { Integer }, optional: false, nullable: false, api_name: "entryId"
        field :interval, -> { String }, optional: false, nullable: false
        field :level, -> { Integer }, optional: false, nullable: false
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
