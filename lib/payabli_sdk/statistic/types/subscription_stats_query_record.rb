# frozen_string_literal: true

module PayabliSdk
  module Statistic
    module Types
      class SubscriptionStatsQueryRecord < Internal::Types::Model
        field :interval, -> { String }, optional: false, nullable: false
        field :count, -> { Integer }, optional: false, nullable: false
        field :volume, -> { Integer }, optional: false, nullable: false
      end
    end
  end
end
