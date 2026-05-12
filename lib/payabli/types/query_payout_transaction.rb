# frozen_string_literal: true

module Payabli
  module Types
    class QueryPayoutTransaction < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::QueryPayoutTransactionRecordsItem] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QueryPayoutTransactionSummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
