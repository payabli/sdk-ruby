# frozen_string_literal: true

module Payabli
  module Types
    # Search criteria for identity matching. Provide at least one of `firstName` or `lastName`.
    class PeopleSearchRequest < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { Object }
    end
  end
end
