# frozen_string_literal: true

module Payabli
  module Businesses
    module Types
      class UpdateBusinessRequest < Internal::Types::Model
        field :business_reference, -> { String }, optional: false, nullable: false, api_name: "businessReference"

        field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

        field :legal_name, -> { String }, optional: true, nullable: false, api_name: "legalName"

        field :description, -> { String }, optional: true, nullable: false

        field :legal_structure, -> { Payabli::Businesses::Types::UpdateBusinessRequestLegalStructure }, optional: true, nullable: false, api_name: "legalStructure"

        field :stock_symbol, -> { String }, optional: true, nullable: false, api_name: "stockSymbol"

        field :incorporation_state, -> { String }, optional: true, nullable: false, api_name: "incorporationState"

        field :tax_id_country, -> { String }, optional: true, nullable: false, api_name: "taxIdCountry"

        field :established_date, -> { String }, optional: true, nullable: false, api_name: "establishedDate"

        field :number_of_employees, -> { Integer }, optional: true, nullable: false, api_name: "numberOfEmployees"

        field :annual_revenue, -> { Integer }, optional: true, nullable: false, api_name: "annualRevenue"

        field :website, -> { String }, optional: true, nullable: false

        field :merchant_cat_code, -> { String }, optional: true, nullable: false, api_name: "merchantCatCode"

        field :timezone, -> { String }, optional: true, nullable: false

        field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false

        field :operating_seasons, -> { Internal::Types::Array[Payabli::Businesses::Types::UpdateBusinessRequestOperatingSeasonsItem] }, optional: true, nullable: false, api_name: "operatingSeasons"

        field :address_details, -> { Internal::Types::Array[Payabli::Types::BusinessAddress] }, optional: true, nullable: false, api_name: "addressDetails"

        field :payment_methods, -> { Internal::Types::Array[Payabli::Types::BusinessPaymentMethod] }, optional: true, nullable: false, api_name: "paymentMethods"

        field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"

        field :is_foreign_owned, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isForeignOwned"

        field :is_tax_exempt, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isTaxExempt"

        field :tax_exempt_classification, -> { String }, optional: true, nullable: false, api_name: "taxExemptClassification"

        field :processing_metrics, -> { Payabli::Types::ProcessingMetrics }, optional: true, nullable: false, api_name: "processingMetrics"

        field :payout_metrics, -> { Payabli::Types::PayoutMetrics }, optional: true, nullable: false, api_name: "payoutMetrics"

        field :license, -> { String }, optional: true, nullable: false

        field :license_state, -> { String }, optional: true, nullable: false, api_name: "licenseState"
      end
    end
  end
end
