# frozen_string_literal: true

module PayabliSdk
  module V2MoneyInTypes
    module Types
      # Individual field error detail for bad request responses.
      class V2BadRequestErrorDetail < Internal::Types::Model
        field :message, -> { String }, optional: false, nullable: false
        field :suggestion, -> { String }, optional: false, nullable: false
      end
    end
  end
end
