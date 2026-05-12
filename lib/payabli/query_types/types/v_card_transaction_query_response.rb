# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Response body for queries about virtual card transactions.
      class VCardTransactionQueryResponse < Internal::Types::Model
        field :summary, -> { Payabli::Types::VCardSummary }, optional: false, nullable: false, api_name: "Summary"
        field :records, -> { Internal::Types::Array[Payabli::QueryTypes::Types::VCardTransactionRecord] }, optional: false, nullable: false, api_name: "Records"
      end
    end
  end
end
