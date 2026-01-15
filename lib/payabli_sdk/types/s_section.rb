# frozen_string_literal: true

module PayabliSdk
  module Types
    class SSection < Internal::Types::Model
      field :ach, -> { PayabliSdk::Types::AchSection }, optional: true, nullable: false
      field :card, -> { PayabliSdk::Types::CardSection }, optional: true, nullable: false
    end
  end
end
