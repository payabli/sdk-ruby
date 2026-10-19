# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class ReissueOutRequest < Internal::Types::Model
        field :trans_id, -> { String }, optional: false, nullable: false, api_name: "transId"

        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"

        field :payment_method, -> { Payabli::Types::ReissuePaymentMethod }, optional: false, nullable: false, api_name: "paymentMethod"

        field :check_number, -> { String }, optional: true, nullable: false, api_name: "checkNumber"
      end
    end
  end
end
