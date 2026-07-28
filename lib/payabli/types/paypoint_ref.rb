# frozen_string_literal: true

module Payabli
  module Types
    # A reference to the paypoint the case applies to.
    class PaypointRef < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: false
    end
  end
end
