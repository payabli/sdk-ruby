# frozen_string_literal: true

module PayabliSdk
  module Types
    class AchTypesPass < Internal::Types::Model
      field :ccd, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false
      field :ppd, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false
      field :web, -> { PayabliSdk::Types::TierItemPass }, optional: true, nullable: false
    end
  end
end
