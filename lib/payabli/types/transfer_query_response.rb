# frozen_string_literal: true

module Payabli
  module Types
    class TransferQueryResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::Transfer] }, optional: false, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::TransferSummary }, optional: false, nullable: false, api_name: "Summary"
    end
  end
end
