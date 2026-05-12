# frozen_string_literal: true

module Payabli
  module GhostCard
    module Types
      class CreateGhostCardRequestBody < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :vendor_id, -> { Integer }, optional: false, nullable: false, api_name: "vendorId"
        field :expense_limit, -> { Integer }, optional: false, nullable: false, api_name: "expenseLimit"
        field :expiration_date, -> { String }, optional: true, nullable: false, api_name: "expirationDate"
        field :amount, -> { Integer }, optional: false, nullable: false
        field :max_number_of_uses, -> { Integer }, optional: false, nullable: false, api_name: "maxNumberOfUses"
        field :exact_amount, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "exactAmount"
        field :expense_limit_period, -> { String }, optional: false, nullable: false, api_name: "expenseLimitPeriod"
        field :billing_cycle, -> { String }, optional: false, nullable: false, api_name: "billingCycle"
        field :billing_cycle_day, -> { String }, optional: false, nullable: false, api_name: "billingCycleDay"
        field :daily_transaction_count, -> { Integer }, optional: false, nullable: false, api_name: "dailyTransactionCount"
        field :daily_amount_limit, -> { Integer }, optional: false, nullable: false, api_name: "dailyAmountLimit"
        field :transaction_amount_limit, -> { Integer }, optional: false, nullable: false, api_name: "transactionAmountLimit"
        field :mcc, -> { String }, optional: true, nullable: false
        field :tcc, -> { String }, optional: true, nullable: false
        field :misc_1, -> { String }, optional: true, nullable: false, api_name: "misc1"
        field :misc_2, -> { String }, optional: true, nullable: false, api_name: "misc2"
      end
    end
  end
end
