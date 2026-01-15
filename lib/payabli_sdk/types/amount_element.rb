# frozen_string_literal: true

module PayabliSdk
  module Types
    class AmountElement < Internal::Types::Model
      field :categories, -> { Internal::Types::Array[PayabliSdk::Types::PayCategory] }, optional: true, nullable: false
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
    end
  end
end
