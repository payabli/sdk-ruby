# frozen_string_literal: true

module Payabli
  module Types
    class QueryInvoiceResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::QueryInvoiceResponseRecordsItem] }, optional: false, nullable: false, api_name: "Records"

      field :summary, -> { Payabli::Types::QuerySummary }, optional: false, nullable: false, api_name: "Summary"
    end
  end
end
