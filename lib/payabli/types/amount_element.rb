# frozen_string_literal: true

module Payabli
  module Types
    class AmountElement < Internal::Types::Model
      field :categories, -> { Internal::Types::Array[Payabli::Types::PayCategory] }, optional: true, nullable: false
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :order, -> { Integer }, optional: true, nullable: false
    end
  end
end
