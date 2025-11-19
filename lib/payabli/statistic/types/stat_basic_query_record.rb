# frozen_string_literal: true

module Payabli
  module Statistic
    module Types
      class StatBasicQueryRecord < Internal::Types::Model
        field :stat_x, -> { String }, optional: false, nullable: false, api_name: "statX"
        field :in_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inTransactions"
        field :in_transactions_volume, lambda {
          Integer
        }, optional: false, nullable: false, api_name: "inTransactionsVolume"
        field :in_wallet_transactions, lambda {
          Integer
        }, optional: false, nullable: false, api_name: "inWalletTransactions"
        field :in_wallet_volume, -> { Integer }, optional: false, nullable: false, api_name: "inWalletVolume"
      end
    end
  end
end
