# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardFlatSection < Internal::Types::Model
      field :tiers, -> { Internal::Types::Array[PayabliSdk::Types::CardType] }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
