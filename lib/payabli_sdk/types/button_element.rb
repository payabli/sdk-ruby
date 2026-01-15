# frozen_string_literal: true

module PayabliSdk
  module Types
    class ButtonElement < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false
      field :size, -> { PayabliSdk::Types::ButtonElementSize }, optional: true, nullable: false
    end
  end
end
