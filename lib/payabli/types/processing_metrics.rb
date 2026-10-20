# frozen_string_literal: true

module Payabli
  module Types
    # Expected Pay In processing profile for the business.
    class ProcessingMetrics < Internal::Types::Model
      field :monthly_receivables_volume, -> { Integer }, optional: true, nullable: false, api_name: "monthlyReceivablesVolume"

      field :average_receivable_size, -> { Integer }, optional: true, nullable: false, api_name: "averageReceivableSize"

      field :largest_receivable_size, -> { Integer }, optional: true, nullable: false, api_name: "largestReceivableSize"

      field :inbound_present_percent, -> { Integer }, optional: true, nullable: false, api_name: "inboundPresentPercent"

      field :inbound_online_percent, -> { Integer }, optional: true, nullable: false, api_name: "inboundOnlinePercent"

      field :inbound_moto_percent, -> { Integer }, optional: true, nullable: false, api_name: "inboundMotoPercent"

      field :refund_policy, -> { String }, optional: true, nullable: false, api_name: "refundPolicy"

      field :advanced_delivery, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "advancedDelivery"

      field :percent_advanced_delivery, -> { Integer }, optional: true, nullable: false, api_name: "percentAdvancedDelivery"

      field :advanced_delivery_days, -> { Integer }, optional: true, nullable: false, api_name: "advancedDeliveryDays"

      field :number_of_transactions, -> { Integer }, optional: true, nullable: false, api_name: "numberOfTransactions"
    end
  end
end
