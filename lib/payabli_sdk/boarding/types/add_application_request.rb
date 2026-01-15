# frozen_string_literal: true

module PayabliSdk
  module Boarding
    module Types
      class AddApplicationRequest < Internal::Types::Model
        extend PayabliSdk::Internal::Types::Union

        member -> { PayabliSdk::Types::ApplicationDataPayIn }
        member -> { PayabliSdk::Types::ApplicationDataManaged }
        member -> { PayabliSdk::Types::ApplicationDataOdp }
        member -> { PayabliSdk::Types::ApplicationData }
      end
    end
  end
end
