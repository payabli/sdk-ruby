# frozen_string_literal: true

module Payabli
  module Types
    # Pagination metadata for a list response.
    class Pagination < Internal::Types::Model
      field :page, -> { Integer }, optional: true, nullable: false

      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"

      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"

      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"

      field :has_next, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasNext"

      field :has_previous, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "hasPrevious"
    end
  end
end
