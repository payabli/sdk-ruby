# frozen_string_literal: true

module Payabli
  module Types
    class ButtonElement < Internal::Types::Model
      field :label, -> { String }, optional: false, nullable: false
      field :size, -> { Payabli::Types::ButtonElementSize }, optional: true, nullable: false
    end
  end
end
