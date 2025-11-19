# frozen_string_literal: true

module Payabli
  module Statistic
    module Types
      class CustomerBasicStatsRequest < Internal::Types::Model
        field :customer_id, -> { Integer }, optional: false, nullable: false, api_name: "customerId"
        field :freq, -> { String }, optional: false, nullable: false
        field :mode, -> { String }, optional: false, nullable: false
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
