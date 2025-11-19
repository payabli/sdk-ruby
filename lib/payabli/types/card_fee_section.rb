# frozen_string_literal: true

module Payabli
  module Types
    class CardFeeSection < Internal::Types::Model
      field :ach_batch_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "achBatchCardFee"
      field :annual_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "annualCardFee"
      field :avs_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "avsCardFee"
      field :chargeback_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "chargebackCardFee"
      field :dda_rejects_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "ddaRejectsCardFee"
      field :early_termination_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "earlyTerminationCardFee"
      field :minimum_processing_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "minimumProcessingCardFee"
      field :monthly_pci_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "monthlyPCICardFee"
      field :montly_platform_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "montlyPlatformCardFee"
      field :retrieval_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "retrievalCardFee"
      field :transaction_card_fee, lambda {
        Payabli::Types::TemplateElement
      }, optional: true, nullable: false, api_name: "transactionCardFee"
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
    end
  end
end
