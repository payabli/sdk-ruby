# frozen_string_literal: true

module PayabliSdk
  module Types
    class CardService < Internal::Types::Model
      field :batch_cutoff_time, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "batchCutoffTime"
      field :card_acceptance, -> { PayabliSdk::Types::CardAcceptanceElement }, optional: true, nullable: false, api_name: "cardAcceptance"
      field :card_fees, -> { PayabliSdk::Types::CardFeeSection }, optional: true, nullable: false, api_name: "cardFees"
      field :card_flat, -> { PayabliSdk::Types::CardFlatSection }, optional: true, nullable: false, api_name: "cardFlat"
      field :card_flat_amountx_auth, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_amountxAuth"
      field :card_flat_high_pay_range, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_highPayRange"
      field :card_flat_low_pay_range, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_lowPayRange"
      field :card_flat_percentx_auth, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardFlat_percentxAuth"
      field :card_icp, -> { PayabliSdk::Types::CardIcpSection }, optional: true, nullable: false, api_name: "cardICP"
      field :card_icp_amountx_auth, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_amountxAuth"
      field :card_icp_high_pay_range, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_highPayRange"
      field :card_icp_low_pay_range, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_lowPayRange"
      field :card_icp_percentx_auth, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardICP_percentxAuth"
      field :card_pass_through, -> { PayabliSdk::Types::CardPassThroughSection }, optional: true, nullable: false, api_name: "cardPassThrough"
      field :card_pass_through_amount_recurring, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_amountRecurring"
      field :card_pass_through_amountx_auth, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_amountxAuth"
      field :card_pass_through_high_pay_range, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_highPayRange"
      field :card_pass_through_low_pay_range, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_lowPayRange"
      field :card_pass_through_percent_recurring, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_percentRecurring"
      field :card_pass_through_percentx_auth, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "cardPassThrough_percentxAuth"
      field :discount_frequency, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "discountFrequency"
      field :funding_rollup, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "fundingRollup"
      field :gateway, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :pass_through_cost, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "passThroughCost"
      field :pdf_template_id, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "pdfTemplateId"
      field :pricing_plan, -> { Integer }, optional: true, nullable: false, api_name: "pricingPlan"
      field :pricing_type, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "pricingType"
      field :processor, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :provider, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :tier_name, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "tierName"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
