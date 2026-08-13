# frozen_string_literal: true

module Payabli
  module Types
    # Pagination summary for the profile list.
    class BillingProfileSummary < Internal::Types::Model
      field :page_identifier, -> { String }, optional: false, nullable: false, api_name: "pageIdentifier"

      field :page_size, -> { Integer }, optional: false, nullable: false, api_name: "pageSize"

      field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"

      field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"
    end
  end
end
