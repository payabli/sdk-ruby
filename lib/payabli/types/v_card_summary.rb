# frozen_string_literal: true

module Payabli
  module Types
    class VCardSummary < Internal::Types::Model
      field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"
      field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"
      field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
      field :totalactive, -> { Integer }, optional: false, nullable: false
      field :totalamounteactive, -> { Integer }, optional: false, nullable: false
      field :totalbalanceactive, -> { Integer }, optional: false, nullable: false
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
    end
  end
end
