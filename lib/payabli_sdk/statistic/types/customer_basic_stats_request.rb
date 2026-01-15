# frozen_string_literal: true

module PayabliSdk
  module Statistic
    module Types
      class CustomerBasicStatsRequest < Internal::Types::Model
        field :mode, -> { String }, optional: false, nullable: false
        field :freq, -> { String }, optional: false, nullable: false
        field :customer_id, -> { Integer }, optional: false, nullable: false, api_name: "customerId"
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
