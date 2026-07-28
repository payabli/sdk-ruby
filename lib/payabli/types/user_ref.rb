# frozen_string_literal: true

module Payabli
  module Types
    # A reference to a user, with the display name resolved when available.
    class UserRef < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :name, -> { String }, optional: false, nullable: true
    end
  end
end
