# frozen_string_literal: true

module PayabliSdk
  module Types
    class TransferQueryResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::Transfer] }, optional: false, nullable: false, api_name: "Records"
      field :summary, -> { PayabliSdk::Types::TransferSummary }, optional: false, nullable: false, api_name: "Summary"
    end
  end
end
