# frozen_string_literal: true

module Payabli
  module Internal
    module Types
      module Unknown
        include Payabli::Internal::Types::Type

        def coerce(value)
          value
        end
      end
    end
  end
end
