# frozen_string_literal: true

module Payabli
  module Types
    class CardPassThroughSection < Internal::Types::Model
      field :multi_tier, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "multiTier"
      field :tiers, -> { Internal::Types::Array[Payabli::Types::CardTypePass] }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
