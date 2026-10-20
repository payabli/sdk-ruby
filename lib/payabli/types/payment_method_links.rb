# frozen_string_literal: true

module Payabli
  module Types
    # Hypermedia links for a payment method resource.
    class PaymentMethodLinks < Internal::Types::Model
      field :self_, -> { String }, optional: true, nullable: false, api_name: "self"

      field :owner, -> { String }, optional: true, nullable: false
    end
  end
end
