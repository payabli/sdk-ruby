# frozen_string_literal: true

module Payabli
  module Types
    class CardService < Internal::Types::Model
      field :batch_cutoff_time, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "batchCutoffTime"
      field :card_acceptance, -> { Payabli::Types::CardAcceptanceElement }, optional: true, nullable: false, api_name: "cardAcceptance"
      field :card_fees, -> { Payabli::Types::CardFeeSection }, optional: true, nullable: false, api_name: "cardFees"
      field :card_flat, -> { Payabli::Types::CardFlatSection }, optional: true, nullable: false, api_name: "cardFlat"
      field :card_flat_amountx_auth, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_amountxAuth"
      field :card_flat_high_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_highPayRange"
      field :card_flat_low_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_lowPayRange"
      field :card_flat_percentx_auth, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_percentxAuth"
      field :card_icp, -> { Payabli::Types::CardIcpSection }, optional: true, nullable: false, api_name: "cardICP"
      field :card_icp_amountx_auth, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_amountxAuth"
      field :card_icp_high_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_highPayRange"
      field :card_icp_low_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_lowPayRange"
      field :card_icp_percentx_auth, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_percentxAuth"
      field :card_pass_through, -> { Payabli::Types::CardPassThroughSection }, optional: true, nullable: false, api_name: "cardPassThrough"
      field :card_pass_through_amount_recurring, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_amountRecurring"
      field :card_pass_through_amountx_auth, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_amountxAuth"
      field :card_pass_through_high_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_highPayRange"
      field :card_pass_through_low_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_lowPayRange"
      field :card_pass_through_percent_recurring, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_percentRecurring"
      field :card_pass_through_percentx_auth, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_percentxAuth"
      field :discount_frequency, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "discountFrequency"
      field :funding_rollup, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "fundingRollup"
      field :gateway, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :pass_through_cost, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "passThroughCost"
      field :pdf_template_id, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "pdfTemplateId"
      field :pricing_plan, -> { Integer }, optional: true, nullable: false, api_name: "pricingPlan"
      field :pricing_type, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "pricingType"
      field :processor, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :provider, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :tier_name, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "tierName"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
