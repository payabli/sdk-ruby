# frozen_string_literal: true

module PayabliSdk
  module Invoice
    module Types
      class QueryInvoiceResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[PayabliSdk::Invoice::Types::QueryInvoiceResponseRecordsItem] }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
