# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      class ReissuePayoutResponseData < Internal::Types::Model
        field :transaction_id, -> { String }, optional: false, nullable: false, api_name: "transactionId"
        field :status, -> { String }, optional: false, nullable: false
        field :original_transaction_id, -> { String }, optional: true, nullable: false, api_name: "originalTransactionId"
      end
    end
  end
end
