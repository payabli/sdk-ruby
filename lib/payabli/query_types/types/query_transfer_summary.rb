# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      class QueryTransferSummary < Internal::Types::Model
        field :ach_returns, -> { Integer }, optional: false, nullable: true, api_name: "achReturns"
        field :adjustments, -> { Integer }, optional: false, nullable: true
        field :billing_fees, -> { Integer }, optional: false, nullable: true, api_name: "billingFees"
        field :chargebacks, -> { Integer }, optional: false, nullable: true
        field :gross_transfer_amount, -> { Integer }, optional: false, nullable: true, api_name: "grossTransferAmount"
        field :release_amount, -> { Integer }, optional: false, nullable: true, api_name: "releaseAmount"
        field :third_party_paid, -> { Integer }, optional: false, nullable: true, api_name: "thirdPartyPaid"
        field :total_net_amount_transfer, -> { Integer }, optional: false, nullable: true, api_name: "totalNetAmountTransfer"
        field :split_amount, -> { Integer }, optional: false, nullable: true, api_name: "splitAmount"
        field :service_fees, -> { Integer }, optional: false, nullable: true, api_name: "serviceFees"
        field :net_batch_amount, -> { Integer }, optional: false, nullable: true, api_name: "netBatchAmount"
        field :transfer_amount, -> { Integer }, optional: false, nullable: true, api_name: "transferAmount"
        field :refunds, -> { Integer }, optional: false, nullable: true
        field :held_amount, -> { Integer }, optional: false, nullable: true, api_name: "heldAmount"
        field :total_records, -> { Integer }, optional: false, nullable: true, api_name: "totalRecords"
        field :total_amount, -> { Integer }, optional: false, nullable: true, api_name: "totalAmount"
        field :total_net_amount, -> { Integer }, optional: false, nullable: true, api_name: "totalNetAmount"
        field :total_pages, -> { Integer }, optional: false, nullable: true, api_name: "totalPages"
        field :page_size, -> { Integer }, optional: false, nullable: true, api_name: "pageSize"
        field :pageidentifier, -> { String }, optional: false, nullable: true
      end
    end
  end
end
