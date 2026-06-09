# frozen_string_literal: true

module Payabli
  module Types
    class QueryTransferDetailResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::TransferDetailRecord] }, optional: false, nullable: false, api_name: "Records"

      field :summary, -> { Payabli::Types::QueryTransferSummary }, optional: false, nullable: false, api_name: "Summary"
    end
  end
end
