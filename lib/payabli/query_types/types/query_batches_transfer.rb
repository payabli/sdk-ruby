# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Transfer details within a batch response.
      class QueryBatchesTransfer < Internal::Types::Model
        field :transfer_id, -> { Integer }, optional: false, nullable: true, api_name: "TransferId"
        field :transfer_date, -> { String }, optional: false, nullable: true, api_name: "TransferDate"
        field :processor, -> { String }, optional: false, nullable: true, api_name: "Processor"
        field :transfer_status, -> { Integer }, optional: false, nullable: true, api_name: "TransferStatus"
        field :gross_amount, -> { Integer }, optional: false, nullable: true, api_name: "GrossAmount"
        field :charge_back_amount, -> { Integer }, optional: false, nullable: true, api_name: "ChargeBackAmount"
        field :returned_amount, -> { Integer }, optional: false, nullable: true, api_name: "ReturnedAmount"
        field :refund_amount, -> { Integer }, optional: false, nullable: true, api_name: "RefundAmount"
        field :hold_amount, -> { Integer }, optional: false, nullable: true, api_name: "HoldAmount"
        field :released_amount, -> { Integer }, optional: false, nullable: true, api_name: "ReleasedAmount"
        field :billing_fees_amount, -> { Integer }, optional: false, nullable: true, api_name: "BillingFeesAmount"
        field :third_party_paid_amount, -> { Integer }, optional: false, nullable: true, api_name: "ThirdPartyPaidAmount"
        field :adjustments_amount, -> { Integer }, optional: false, nullable: true, api_name: "AdjustmentsAmount"
        field :net_funded_amount, -> { Integer }, optional: false, nullable: true, api_name: "NetFundedAmount"
      end
    end
  end
end
