# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Summary information for outbound transfer queries.
      class TransferOutSummary < Internal::Types::Model
        field :total_pages, -> { Integer }, optional: false, nullable: true, api_name: "totalPages"
        field :total_records, -> { Integer }, optional: false, nullable: true, api_name: "totalRecords"
        field :page_size, -> { Integer }, optional: false, nullable: true, api_name: "pageSize"
      end
    end
  end
end
