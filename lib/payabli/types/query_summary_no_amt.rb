# frozen_string_literal: true

module Payabli
  module Types
    class QuerySummaryNoAmt < Internal::Types::Model
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"
      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"
    end
  end
end
