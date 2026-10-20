# frozen_string_literal: true

module Payabli
  module Paypoints
    module Types
      class CreatePaypointPaypointsRequest < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::Types::CreatePaypointWithBusinessReference }

        member -> { Payabli::Types::CreatePaypointWithInlineBusiness }

        member -> { Payabli::Types::CreatePaypointAllFields }
      end
    end
  end
end
