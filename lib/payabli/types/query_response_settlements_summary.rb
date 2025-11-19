# frozen_string_literal: true

module Payabli
  module Types
    class QueryResponseSettlementsSummary < Internal::Types::Model
      field :held_amount, -> { Integer }, optional: true, nullable: false, api_name: "heldAmount"
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "pageSize"
      field :refunds, -> { Integer }, optional: true, nullable: false
      field :service_fees, -> { Integer }, optional: true, nullable: false, api_name: "serviceFees"
      field :total_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalAmount"
      field :total_net_amount, -> { Integer }, optional: true, nullable: false, api_name: "totalNetAmount"
      field :total_pages, -> { Integer }, optional: true, nullable: false, api_name: "totalPages"
      field :total_records, -> { Integer }, optional: true, nullable: false, api_name: "totalRecords"
      field :transfer_amount, -> { Integer }, optional: true, nullable: false, api_name: "transferAmount"
    end
  end
end
