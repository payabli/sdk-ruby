# frozen_string_literal: true

module Payabli
  module Types
    module BusinessAddressLocation
      extend Payabli::Internal::Types::Enum

      OFFICE = "office"
      WAREHOUSE = "warehouse"
      RETAIL = "retail"
      HOME = "home"
      OTHER = "other"
    end
  end
end
