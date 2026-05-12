# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Response body for queries about outbound transfer details.
      class TransferOutDetailQueryResponse < Internal::Types::Model
        field :summary, -> { Payabli::QueryTypes::Types::QueryTransferSummary }, optional: false, nullable: false, api_name: "Summary"
        field :records, -> { Internal::Types::Array[Payabli::QueryTypes::Types::TransferOutDetailRecord] }, optional: false, nullable: false, api_name: "Records"
      end
    end
  end
end
