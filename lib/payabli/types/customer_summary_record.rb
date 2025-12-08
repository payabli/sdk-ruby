# frozen_string_literal: true

module Payabli
  module Types
    class CustomerSummaryRecord < Internal::Types::Model
      field :numberof_transactions, -> { Integer }, optional: true, nullable: false, api_name: "numberofTransactions"
      field :recent_transactions, -> { Internal::Types::Array[Payabli::Types::TransactionQueryRecords] }, optional: true, nullable: false, api_name: "recentTransactions"
      field :total_amount_transactions, -> { Integer }, optional: true, nullable: false, api_name: "totalAmountTransactions"
      field :total_net_amount_transactions, -> { Integer }, optional: true, nullable: false, api_name: "totalNetAmountTransactions"
    end
  end
end
