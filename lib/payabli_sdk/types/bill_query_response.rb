# frozen_string_literal: true

module PayabliSdk
  module Types
    class BillQueryResponse < Internal::Types::Model
      field :summary, -> { PayabliSdk::Types::BillQueryResponseSummary }, optional: true, nullable: false, api_name: "Summary"
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::BillQueryRecord2] }, optional: true, nullable: false, api_name: "Records"
    end
  end
end
