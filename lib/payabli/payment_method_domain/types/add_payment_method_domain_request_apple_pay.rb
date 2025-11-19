# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      # Apple Pay configuration information.
      class AddPaymentMethodDomainRequestApplePay < Internal::Types::Model
        field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
      end
    end
  end
end
