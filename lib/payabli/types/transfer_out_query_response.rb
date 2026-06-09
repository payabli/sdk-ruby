# frozen_string_literal: true

module Payabli
  module Types
    # Response body for queries about outbound transfers.
    class TransferOutQueryResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::TransferOutSummary }, optional: false, nullable: false, api_name: "Summary"

      field :records, -> { Internal::Types::Array[Payabli::Types::TransferOutRecord] }, optional: false, nullable: false, api_name: "Records"
    end
  end
end
