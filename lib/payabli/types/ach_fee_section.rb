# frozen_string_literal: true

module Payabli
  module Types
    class AchFeeSection < Internal::Types::Model
      field :advanced_settlement_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "advancedSettlementAchFee"
      field :annual_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "annualAchFee"
      field :chargeback_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "chargebackAchFee"
      field :early_termination_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "earlyTerminationAchFee"
      field :monthly_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "monthlyAchFee"
      field :quarterly_pci_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "quarterlyPCIAchFee"
      field :returned_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "returnedAchFee"
      field :same_day_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "sameDayAchFee"
      field :sunday_origination_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "sundayOriginationAchFee"
      field :verify_bank_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "verifyBankAchFee"
      field :verify_fund_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "verifyFundAchFee"
      field :verify_negative_ach_fee, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "verifyNegativeAchFee"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
