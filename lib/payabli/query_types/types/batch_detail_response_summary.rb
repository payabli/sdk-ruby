# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class BatchDetailResponseSummary < Internal::Types::Model
        field :service_fees, -> { Integer }, optional: false, nullable: false, api_name: "serviceFees"
        field :transfer_amount, -> { Integer }, optional: false, nullable: false, api_name: "transferAmount"
        field :refunds, -> { Integer }, optional: false, nullable: false
        field :held_amount, -> { Integer }, optional: false, nullable: false, api_name: "heldAmount"
        field :total_records, -> { Integer }, optional: false, nullable: false, api_name: "totalRecords"
        field :total_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalAmount"
        field :total_net_amount, -> { Integer }, optional: false, nullable: false, api_name: "totalNetAmount"
        field :total_pages, -> { Integer }, optional: false, nullable: false, api_name: "totalPages"
        field :page_size, -> { Integer }, optional: false, nullable: false, api_name: "pageSize"
        field :pageidentifier, -> { String }, optional: false, nullable: true
      end
    end
  end
end
