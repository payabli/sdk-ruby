# frozen_string_literal: true

module Payabli
  module Types
    class SSection < Internal::Types::Model
      field :ach, -> { Payabli::Types::AchSection }, optional: true, nullable: false
      field :card, -> { Payabli::Types::CardSection }, optional: true, nullable: false
    end
  end
end
