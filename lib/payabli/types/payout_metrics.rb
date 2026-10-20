# frozen_string_literal: true

module Payabli
  module Types
    # Expected Pay Out profile for the business.
    class PayoutMetrics < Internal::Types::Model
      field :monthly_payables_volume, -> { Integer }, optional: true, nullable: false, api_name: "monthlyPayablesVolume"

      field :average_payables_size, -> { Integer }, optional: true, nullable: false, api_name: "averagePayablesSize"

      field :largest_payables_size, -> { Integer }, optional: true, nullable: false, api_name: "largestPayablesSize"

      field :number_of_transactions, -> { Integer }, optional: true, nullable: false, api_name: "numberOfTransactions"
    end
  end
end
