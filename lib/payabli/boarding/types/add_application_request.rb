# frozen_string_literal: true

module Payabli
  module Boarding
    module Types
      class AddApplicationRequest < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::Types::ApplicationDataPayIn }
        member -> { Payabli::Types::ApplicationDataManaged }
        member -> { Payabli::Types::ApplicationDataOdp }
        member -> { Payabli::Types::ApplicationData }
      end
    end
  end
end
