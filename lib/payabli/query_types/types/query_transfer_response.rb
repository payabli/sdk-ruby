# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class QueryTransferResponse < Internal::Types::Model
        field :summary, -> { Payabli::QueryTypes::Types::QueryTransferSummary }, optional: false, nullable: false, api_name: "Summary"
        field :records, -> { Internal::Types::Array[Payabli::Types::TransactionQueryRecords] }, optional: false, nullable: false, api_name: "Records"
      end
    end
  end
end
