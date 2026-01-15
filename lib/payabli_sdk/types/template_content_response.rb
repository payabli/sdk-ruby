# frozen_string_literal: true

module PayabliSdk
  module Types
    class TemplateContentResponse < Internal::Types::Model
      field :business_data, -> { PayabliSdk::Types::BusinessSection }, optional: true, nullable: false, api_name: "businessData"
      field :documents_data, -> { PayabliSdk::Types::DocumentSection }, optional: true, nullable: false, api_name: "documentsData"
      field :ownership_data, -> { PayabliSdk::Types::OwnersSection }, optional: true, nullable: false, api_name: "ownershipData"
      field :processing_data, -> { PayabliSdk::Types::ProcessingSection }, optional: true, nullable: false, api_name: "processingData"
      field :sales_data, -> { PayabliSdk::Types::SalesSection }, optional: true, nullable: false, api_name: "salesData"
      field :services_data, -> { PayabliSdk::Types::ServicesSection }, optional: true, nullable: false, api_name: "servicesData"
      field :underwriting_data, -> { PayabliSdk::Types::UnderwritingDataResponse }, optional: true, nullable: false, api_name: "underwritingData"
    end
  end
end
