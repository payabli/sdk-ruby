# frozen_string_literal: true

module PayabliSdk
  module Types
    # The response data.
    class Responsedatanonobject < Internal::Types::Model
      extend PayabliSdk::Internal::Types::Union

      member -> { String }
      member -> { Integer }
    end
  end
end
