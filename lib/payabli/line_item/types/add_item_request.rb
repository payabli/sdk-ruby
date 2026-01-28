# frozen_string_literal: true

module Payabli
  module LineItem
    module Types
      class AddItemRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { Payabli::Types::LineItem }, optional: false, nullable: false
      end
    end
  end
end
