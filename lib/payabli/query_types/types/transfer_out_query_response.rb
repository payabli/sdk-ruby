# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Response body for queries about outbound transfers.
      class TransferOutQueryResponse < Internal::Types::Model
        field :summary, -> { Payabli::QueryTypes::Types::TransferOutSummary }, optional: false, nullable: false, api_name: "Summary"
        field :records, -> { Internal::Types::Array[Payabli::QueryTypes::Types::TransferOutRecord] }, optional: false, nullable: false, api_name: "Records"
      end
    end
  end
end
