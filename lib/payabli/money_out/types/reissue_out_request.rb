# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class ReissueOutRequest < Internal::Types::Model
        field :trans_id, -> { String }, optional: false, nullable: false, api_name: "transId"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :body, -> { Payabli::MoneyOutTypes::Types::ReissuePayoutBody }, optional: false, nullable: false
      end
    end
  end
end
