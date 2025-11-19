# frozen_string_literal: true

module Payabli
  module Types
    class CardFlatSection < Internal::Types::Model
      field :tiers, -> { Internal::Types::Array[Payabli::Types::CardType] }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
