# frozen_string_literal: true

module Payabli
  module Types
    # A split funding instruction on a settled transaction, enriched with the batch and transfer that paid out the split
    # when that information is available. Returned by the settlement query endpoints.
    class SettlementSplitFundingDetail < Internal::Types::Model
      field :recipient_entry_point, -> { String }, optional: true, nullable: false, api_name: "recipientEntryPoint"

      field :account_id, -> { String }, optional: true, nullable: false, api_name: "AccountId"

      field :description, -> { String }, optional: true, nullable: false, api_name: "Description"

      field :amount, -> { Integer }, optional: true, nullable: false, api_name: "Amount"

      field :batch_number, -> { String }, optional: true, nullable: false, api_name: "batchNumber"

      field :transfer_id, -> { Integer }, optional: true, nullable: false, api_name: "transferId"

      field :transfer_amount, -> { Integer }, optional: true, nullable: false, api_name: "transferAmount"
    end
  end
end
