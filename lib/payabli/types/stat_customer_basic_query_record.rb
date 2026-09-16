# frozen_string_literal: true

module Payabli
  module Types
    class StatCustomerBasicQueryRecord < Internal::Types::Model
      field :stat_x, -> { String }, optional: false, nullable: false, api_name: "statX"

      field :in_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inTransactions"

      field :in_transactions_volume, -> { Integer }, optional: false, nullable: false, api_name: "inTransactionsVolume"
    end
  end
end
