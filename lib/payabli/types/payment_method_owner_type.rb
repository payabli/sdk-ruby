# frozen_string_literal: true

module Payabli
  module Types
    module PaymentMethodOwnerType
      extend Payabli::Internal::Types::Enum

      PERSON = "person"
      BUSINESS = "business"
    end
  end
end
