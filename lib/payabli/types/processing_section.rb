# frozen_string_literal: true

module Payabli
  module Types
    class ProcessingSection < Internal::Types::Model
      field :avgmonthly, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :binperson, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :binphone, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :binweb, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :bsummary, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :highticketamt, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :mcc, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :sub_footer, -> { String }, optional: true, nullable: false, api_name: "subFooter"
      field :sub_header, -> { String }, optional: true, nullable: false, api_name: "subHeader"
      field :ticketamt, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :when_charged, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenCharged"
      field :when_delivered, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenDelivered"
      field :when_provided, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenProvided"
      field :when_refunded, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenRefunded"
      field :combined_batches, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "CombinedBatches"
      field :payout_average_monthly_volume, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "payoutAverageMonthlyVolume"
      field :payout_high_ticket_amount, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "payoutHighTicketAmount"
      field :payout_average_ticket_amount, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "payoutAverageTicketAmount"
      field :payout_credit_limit, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "payoutCreditLimit"
    end
  end
end
