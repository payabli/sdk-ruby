# frozen_string_literal: true

module Payabli
  module Types
    # A non-blocking warning returned alongside a successful response.
    class BoardingWarning < Internal::Types::Model
      field :code, -> { String }, optional: true, nullable: false

      field :message, -> { String }, optional: true, nullable: false
    end
  end
end
