# frozen_string_literal: true

module PayabliSdk
  module Internal
    module Types
      module Unknown
        include PayabliSdk::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
