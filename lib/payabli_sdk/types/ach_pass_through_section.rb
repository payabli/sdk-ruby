# frozen_string_literal: true

module PayabliSdk
  module Types
    class AchPassThroughSection < Internal::Types::Model
      field :multi_tier, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multiTier"
      field :tiers, -> { Internal::Types::Array[PayabliSdk::Types::AchTypesPass] }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
