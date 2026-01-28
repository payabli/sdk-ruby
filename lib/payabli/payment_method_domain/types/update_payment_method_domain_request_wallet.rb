# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      class UpdatePaymentMethodDomainRequestWallet < Internal::Types::Model
        field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
      end
    end
  end
end
