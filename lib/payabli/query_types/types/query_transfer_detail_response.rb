# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class QueryTransferDetailResponse < Internal::Types::Model
        field :records, lambda {
          Internal::Types::Array[Payabli::QueryTypes::Types::TransferDetailRecord]
        }, optional: false, nullable: false, api_name: "Records"
        field :summary, lambda {
          Payabli::QueryTypes::Types::QueryTransferSummary
        }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
