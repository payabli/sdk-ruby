# frozen_string_literal: true

module PayabliSdk
  module Types
    class QueryPayoutTransaction < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::QueryPayoutTransactionRecordsItem] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { PayabliSdk::Types::QueryPayoutTransactionSummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
