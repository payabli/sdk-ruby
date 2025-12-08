# frozen_string_literal: true

module Payabli
  module Types
    class AchService < Internal::Types::Model
      field :ach_absorb, -> { Payabli::Types::AchAbsorbSection }, optional: true, nullable: false, api_name: "achAbsorb"
      field :ach_absorb_high_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "achAbsorb_highPayRange"
      field :ach_absorb_low_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "achAbsorb_lowPayRange"
      field :ach_acceptance, -> { Payabli::Types::AchAcceptanceElement }, optional: true, nullable: false, api_name: "achAcceptance"
      field :ach_fees, -> { Payabli::Types::AchFeeSection }, optional: true, nullable: false, api_name: "achFees"
      field :ach_pass_high_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "achPass_highPayRange"
      field :ach_pass_low_pay_range, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "achPass_lowPayRange"
      field :ach_pass_through, -> { Payabli::Types::AchPassThroughSection }, optional: true, nullable: false, api_name: "achPassThrough"
      field :batch_cutoff_time, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "batchCutoffTime"
      field :discount_frequency, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "discountFrequency"
      field :funding_rollup, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "fundingRollup"
      field :gateway, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
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
