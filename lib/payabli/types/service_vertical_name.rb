# frozen_string_literal: true

module Payabli
  module Types
    module ServiceVerticalName
      extend Payabli::Internal::Types::Enum

      PAY_IN = "PayIn"
      PAY_OUT = "PayOut"
      PAY_OPS = "PayOps"
    end
  end
end
