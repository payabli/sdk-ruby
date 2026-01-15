# frozen_string_literal: true

module PayabliSdk
  module Types
    # The required and recommended fields for a payment made with a stored payment method.
    class PayMethodStoredMethod < Internal::Types::Model
      field :initiator, -> { String }, optional: true, nullable: false
      field :method_, -> { PayabliSdk::Types::PayMethodStoredMethodMethod }, optional: false, nullable: false, api_name: "method"
      field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
      field :stored_method_usage_type, -> { String }, optional: true, nullable: false, api_name: "storedMethodUsageType"
    end
  end
end
