# frozen_string_literal: true

module Payabli
  module Types
    # Response body for the next check number lookup.
    class NextCheckNumberResponse < Internal::Types::Model
      field :check_number, -> { String }, optional: false, nullable: false, api_name: "checkNumber"
    end
  end
end
