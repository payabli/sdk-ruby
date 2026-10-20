# frozen_string_literal: true

module Payabli
  module PaymentMethods
    module Types
      class CreatePaymentMethodsRequest < Internal::Types::Model
        field :data, -> { Internal::Types::Array[Payabli::Types::CreatePaymentMethodRequest] }, optional: false, nullable: false
      end
    end
  end
end
