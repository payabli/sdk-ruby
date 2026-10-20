# frozen_string_literal: true

module Payabli
  module Types
    # Pagination metadata for a template list response.
    class TemplatesSummary < Internal::Types::Model
      field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"

      field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"

      field :page_size, -> { Integer }, optional: false, nullable: false, api_name: "pageSize"
    end
  end
end
