# frozen_string_literal: true

module Payabli
  module Types
    class TierItemPass < Internal::Types::Model
      field :amount_feeone_time, -> { Integer }, optional: true, nullable: false, api_name: "amountFeeone-time"
      field :amount_fee_recurring, -> { Integer }, optional: true, nullable: false, api_name: "amountFeeRecurring"
      field :high_pay_range, -> { Integer }, optional: true, nullable: false, api_name: "highPayRange"
      field :low_pay_range, -> { Integer }, optional: true, nullable: false, api_name: "lowPayRange"
      field :percent_feeone_time, -> { Integer }, optional: true, nullable: false, api_name: "percentFeeone-time"
      field :percent_fee_recurring, -> { Integer }, optional: true, nullable: false, api_name: "percentFeeRecurring"
    end
  end
end
