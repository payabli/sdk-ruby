# frozen_string_literal: true

module PayabliSdk
  module QueryTypes
    module Types
      class QueryTransferResponse < Internal::Types::Model
        field :summary, -> { PayabliSdk::QueryTypes::Types::QueryTransferSummary }, optional: false, nullable: false, api_name: "Summary"
        field :records, -> { Internal::Types::Array[PayabliSdk::Types::TransactionQueryRecords] }, optional: false, nullable: false, api_name: "Records"
      end
    end
  end
end
