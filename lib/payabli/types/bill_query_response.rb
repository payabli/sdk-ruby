# frozen_string_literal: true

module Payabli
  module Types
    class BillQueryResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::BillQueryResponseSummary }, optional: true, nullable: false, api_name: "Summary"
      field :records, -> { Internal::Types::Array[Payabli::Types::BillQueryRecord2] }, optional: true, nullable: false, api_name: "Records"
    end
  end
end
