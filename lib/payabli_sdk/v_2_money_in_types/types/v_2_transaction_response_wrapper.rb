# frozen_string_literal: true

module PayabliSdk
  module V2MoneyInTypes
    module Types
      # Standard response wrapper for v2 Money In transaction endpoints. All v2 transaction endpoints return responses
      # in this format with consistent `code`, `reason`, `explanation`, and `action` fields. The `data` field contains
      # transaction details.
      class V2TransactionResponseWrapper < Internal::Types::Model
        field :code, -> { String }, optional: false, nullable: false
        field :reason, -> { String }, optional: false, nullable: false
        field :explanation, -> { String }, optional: false, nullable: false
        field :action, -> { String }, optional: false, nullable: false
        field :data, -> { PayabliSdk::V2MoneyInTypes::Types::V2TransactionDetails }, optional: false, nullable: false
        field :token, -> { String }, optional: false, nullable: true
      end
    end
  end
end
