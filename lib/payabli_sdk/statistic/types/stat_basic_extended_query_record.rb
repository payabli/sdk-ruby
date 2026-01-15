# frozen_string_literal: true

module PayabliSdk
  module Statistic
    module Types
      class StatBasicExtendedQueryRecord < Internal::Types::Model
        field :stat_x, -> { String }, optional: false, nullable: false, api_name: "statX"
        field :out_customers, -> { Integer }, optional: false, nullable: false, api_name: "outCustomers"
        field :out_new_customers, -> { Integer }, optional: false, nullable: false, api_name: "outNewCustomers"
        field :out_transactions, -> { Integer }, optional: false, nullable: false, api_name: "outTransactions"
        field :out_subscriptions_paid, -> { Integer }, optional: false, nullable: false, api_name: "outSubscriptionsPaid"
        field :out_card_transactions, -> { Integer }, optional: false, nullable: false, api_name: "outCardTransactions"
        field :out_v_card_transactions, -> { Integer }, optional: false, nullable: false, api_name: "outVCardTransactions"
        field :out_ach_transactions, -> { Integer }, optional: false, nullable: false, api_name: "outACHTransactions"
        field :out_check_transactions, -> { Integer }, optional: false, nullable: false, api_name: "outCheckTransactions"
        field :out_pending_method_transactions, -> { Integer }, optional: false, nullable: false, api_name: "outPendingMethodTransactions"
        field :out_transactions_volume, -> { Integer }, optional: false, nullable: false, api_name: "outTransactionsVolume"
        field :out_subscriptions_paid_volume, -> { Integer }, optional: false, nullable: false, api_name: "outSubscriptionsPaidVolume"
        field :out_card_volume, -> { Integer }, optional: false, nullable: false, api_name: "outCardVolume"
        field :out_v_card_volume, -> { Integer }, optional: false, nullable: false, api_name: "outVCardVolume"
        field :out_ach_volume, -> { Integer }, optional: false, nullable: false, api_name: "outACHVolume"
        field :out_check_volume, -> { Integer }, optional: false, nullable: false, api_name: "outCheckVolume"
        field :out_pending_method_volume, -> { Integer }, optional: false, nullable: false, api_name: "outPendingMethodVolume"
        field :in_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inTransactions"
        field :in_subscriptions_paid, -> { Integer }, optional: false, nullable: false, api_name: "inSubscriptionsPaid"
        field :in_customers, -> { Integer }, optional: false, nullable: false, api_name: "inCustomers"
        field :in_new_customers, -> { Integer }, optional: false, nullable: false, api_name: "inNewCustomers"
        field :in_card_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inCardTransactions"
        field :in_ach_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inACHTransactions"
        field :in_check_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inCheckTransactions"
        field :in_cash_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inCashTransactions"
        field :in_wallet_transactions, -> { Integer }, optional: false, nullable: false, api_name: "inWalletTransactions"
        field :in_card_charge_backs, -> { Integer }, optional: false, nullable: false, api_name: "inCardChargeBacks"
        field :in_ach_returns, -> { Integer }, optional: false, nullable: false, api_name: "inACHReturns"
        field :in_transactions_volume, -> { Integer }, optional: false, nullable: false, api_name: "inTransactionsVolume"
        field :in_subscriptions_paid_volume, -> { Integer }, optional: false, nullable: false, api_name: "inSubscriptionsPaidVolume"
        field :in_card_volume, -> { Integer }, optional: false, nullable: false, api_name: "inCardVolume"
        field :in_ach_volume, -> { Integer }, optional: false, nullable: false, api_name: "inACHVolume"
        field :in_check_volume, -> { Integer }, optional: false, nullable: false, api_name: "inCheckVolume"
        field :in_cash_volume, -> { Integer }, optional: false, nullable: false, api_name: "inCashVolume"
        field :in_wallet_volume, -> { Integer }, optional: false, nullable: false, api_name: "inWalletVolume"
        field :in_card_charge_back_volume, -> { Integer }, optional: false, nullable: false, api_name: "inCardChargeBackVolume"
        field :in_ach_returns_volume, -> { Integer }, optional: false, nullable: false, api_name: "inACHReturnsVolume"
      end
    end
  end
end
