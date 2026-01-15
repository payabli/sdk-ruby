# frozen_string_literal: true

module PayabliSdk
  module Bill
    module Types
      class AddBillRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { PayabliSdk::Bill::Types::BillOutData }, optional: false, nullable: false
      end
    end
  end
end
