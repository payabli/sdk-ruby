# frozen_string_literal: true

module Payabli
  module V2MoneyInTypes
    module Types
      # Response wrapper for declined v2 Money In transaction endpoints (HTTP 402). Returned when a transaction is
      # declined by the card network or issuer. All decline responses use this format with unified response codes
      # starting with 'D'. The `data` field contains transaction details.
      class V2DeclinedTransactionResponseWrapper < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
        field :reason, -> { String }, optional: false, nullable: false
        field :explanation, -> { String }, optional: false, nullable: false
        field :action, -> { String }, optional: false, nullable: false
        field :data, -> { Payabli::V2MoneyInTypes::Types::V2TransactionDetails }, optional: false, nullable: false
        field :token, -> { String }, optional: false, nullable: true
      end
    end
  end
end
