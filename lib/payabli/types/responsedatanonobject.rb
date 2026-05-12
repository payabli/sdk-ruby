# frozen_string_literal: true

module Payabli
  module Types
    # The response data.
    class Responsedatanonobject < Internal::Types::Model
      extend Payabli::Internal::Types::Union

      member -> { String }
      member -> { Integer }
    end
  end
end
