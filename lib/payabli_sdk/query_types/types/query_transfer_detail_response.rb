# frozen_string_literal: true

module PayabliSdk
  module QueryTypes
    module Types
      class QueryTransferDetailResponse < Internal::Types::Model
        field :records, -> { Internal::Types::Array[PayabliSdk::QueryTypes::Types::TransferDetailRecord] }, optional: false, nullable: false, api_name: "Records"
        field :summary, -> { PayabliSdk::QueryTypes::Types::QueryTransferSummary }, optional: false, nullable: false, api_name: "Summary"
      end
    end
  end
end
