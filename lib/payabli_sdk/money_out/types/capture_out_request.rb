# frozen_string_literal: true

module PayabliSdk
  module MoneyOut
    module Types
      class CaptureOutRequest < Internal::Types::Model
        field :reference_id, -> { String }, optional: false, nullable: false, api_name: "referenceId"
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
      end
    end
  end
end
