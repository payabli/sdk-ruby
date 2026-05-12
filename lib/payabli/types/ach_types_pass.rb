# frozen_string_literal: true

module Payabli
  module Types
    class AchTypesPass < Internal::Types::Model
      field :ccd, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false
      field :ppd, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false
      field :web, -> { Payabli::Types::TierItemPass }, optional: true, nullable: false
    end
  end
end
