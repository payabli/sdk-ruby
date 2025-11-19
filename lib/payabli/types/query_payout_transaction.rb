# frozen_string_literal: true

module Payabli
  module Types
    class QueryPayoutTransaction < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Payabli::Types::QueryPayoutTransactionRecordsItem]
      }, optional: true, nullable: false, api_name: "Records"
      field :summary, lambda {
        Payabli::Types::QueryPayoutTransactionSummary
      }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
