# frozen_string_literal: true

module Payabli
  module PaymentMethodDomain
    module Types
      # Google Pay configuration information.
      class AddPaymentMethodDomainRequestGooglePay < Internal::Types::Model
        field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
      end
    end
  end
end
