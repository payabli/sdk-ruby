# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class CaptureAllOutRequest < Internal::Types::Model
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Internal::Types::Array[String] }, optional: false, nullable: false
      end
    end
  end
end
