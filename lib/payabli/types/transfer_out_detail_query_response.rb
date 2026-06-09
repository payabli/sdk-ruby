# frozen_string_literal: true

module Payabli
  module Types
    # Response body for queries about outbound transfer details.
    class TransferOutDetailQueryResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::QueryTransferSummary }, optional: false, nullable: false, api_name: "Summary"

      field :records, -> { Internal::Types::Array[Payabli::Types::TransferOutDetailRecord] }, optional: false, nullable: false, api_name: "Records"
    end
  end
end
