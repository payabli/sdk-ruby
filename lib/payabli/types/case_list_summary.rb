# frozen_string_literal: true

module Payabli
  module Types
    # Pagination and totals for a case list response.
    class CaseListSummary < Internal::Types::Model
      field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"

      field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"

      field :total_net_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalNetAmount"

      field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"

      field :page_size, -> { Integer }, optional: false, nullable: false, api_name: "pageSize"

      field :pageidentifier, -> { String }, optional: false, nullable: true
    end
  end
end
