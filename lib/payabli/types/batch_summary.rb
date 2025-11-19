# frozen_string_literal: true

module Payabli
  module Types
    class BatchSummary < Internal::Types::Model
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
      field :total_net_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalNetAmount"
      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"
      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"
    end
  end
end
