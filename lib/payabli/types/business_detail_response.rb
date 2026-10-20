# frozen_string_literal: true

module Payabli
  module Types
    # The full detail of a business. Sensitive fields are masked unless read from the unmasked endpoint.
    class BusinessDetailResponse < Internal::Types::Model
      field :business_uuid, -> { String }, optional: false, nullable: false, api_name: "businessUuid"

      field :external_id, -> { String }, optional: true, nullable: false, api_name: "externalId"

      field :legal_name, -> { String }, optional: false, nullable: true, api_name: "legalName"

      field :description, -> { String }, optional: true, nullable: false

      field :legal_structure, -> { Payabli::Types::BusinessDetailResponseLegalStructure }, optional: false, nullable: true, api_name: "legalStructure"

      field :stock_symbol, -> { String }, optional: true, nullable: false, api_name: "stockSymbol"

      field :incorporation_state, -> { String }, optional: false, nullable: true, api_name: "incorporationState"

      field :tax_id_country, -> { String }, optional: false, nullable: true, api_name: "taxIdCountry"

      field :established_date, -> { String }, optional: true, nullable: false, api_name: "establishedDate"

      field :number_of_employees, -> { Integer }, optional: true, nullable: false, api_name: "numberOfEmployees"

      field :annual_revenue, -> { Integer }, optional: true, nullable: false, api_name: "annualRevenue"

      field :website, -> { String }, optional: true, nullable: false

      field :merchant_cat_code, -> { String }, optional: true, nullable: false, api_name: "merchantCatCode"

      field :timezone, -> { String }, optional: true, nullable: false

      field :phone, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false

      field :operating_seasons, -> { Internal::Types::Array[Payabli::Types::BusinessDetailResponseOperatingSeasonsItem] }, optional: true, nullable: false, api_name: "operatingSeasons"

      field :address_details, -> { Internal::Types::Array[Payabli::Types::BusinessAddress] }, optional: true, nullable: false, api_name: "addressDetails"

      field :payment_methods, -> { Internal::Types::Array[Payabli::Types::BusinessPaymentMethod] }, optional: true, nullable: false, api_name: "paymentMethods"

      field :custom_data, -> { Internal::Types::Hash[String, Object] }, optional: true, nullable: false, api_name: "customData"

      field :is_foreign_owned, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isForeignOwned"

      field :is_tax_exempt, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isTaxExempt"

      field :tax_exempt_classification, -> { String }, optional: false, nullable: true, api_name: "taxExemptClassification"

      field :processing_metrics, -> { Payabli::Types::ProcessingMetrics }, optional: true, nullable: false, api_name: "processingMetrics"

      field :payout_metrics, -> { Payabli::Types::PayoutMetrics }, optional: true, nullable: false, api_name: "payoutMetrics"

      field :license, -> { String }, optional: false, nullable: true

      field :license_state, -> { String }, optional: false, nullable: true, api_name: "licenseState"

      field :tax_reference, -> { String }, optional: false, nullable: true, api_name: "taxReference"

      field :business_status, -> { String }, optional: false, nullable: false, api_name: "businessStatus"

      field :parent_reference, -> { String }, optional: false, nullable: true, api_name: "parentReference"

      field :certification_details, -> { Internal::Types::Array[Payabli::Types::CertificationDetail] }, optional: true, nullable: false, api_name: "certificationDetails"

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :last_updated, -> { String }, optional: false, nullable: false, api_name: "lastUpdated"

      field :links, -> { Payabli::Types::BusinessLinks }, optional: false, nullable: false, api_name: "_links"
    end
  end
end
