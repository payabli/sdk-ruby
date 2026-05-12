# frozen_string_literal: true

module Payabli
  module Types
    class CustomerSummaryRecord < Internal::Types::Model
      field :numberof_transactions, -> { Integer }, optional: true, nullable: false, api_name: "NumberofTransactions"

      field :recent_transactions, -> { Internal::Types::Array[Payabli::Types::TransactionQueryRecords] }, optional: true, nullable: false, api_name: "RecentTransactions"

      field :total_amount_transactions, -> { Integer }, optional: true, nullable: false, api_name: "TotalAmountTransactions"

      field :total_net_amount_transactions, -> { Integer }, optional: true, nullable: false, api_name: "TotalNetAmountTransactions"
    end
  end
end
