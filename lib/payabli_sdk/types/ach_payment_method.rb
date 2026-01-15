# frozen_string_literal: true

module PayabliSdk
  module Types
    # ACH payment method.
    class AchPaymentMethod < Internal::Types::Model
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
      field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
    end
  end
end
