# frozen_string_literal: true

module Payabli
  module Types
    class TemplateContentResponse < Internal::Types::Model
      field :business_data, -> { Payabli::Types::BusinessSection }, optional: true, nullable: false, api_name: "businessData"
      field :documents_data, -> { Payabli::Types::DocumentSection }, optional: true, nullable: false, api_name: "documentsData"
      field :ownership_data, -> { Payabli::Types::OwnersSection }, optional: true, nullable: false, api_name: "ownershipData"
      field :processing_data, -> { Payabli::Types::ProcessingSection }, optional: true, nullable: false, api_name: "processingData"
      field :sales_data, -> { Payabli::Types::SalesSection }, optional: true, nullable: false, api_name: "salesData"
      field :services_data, -> { Payabli::Types::ServicesSection }, optional: true, nullable: false, api_name: "servicesData"
      field :underwriting_data, -> { Payabli::Types::UnderwritingDataResponse }, optional: true, nullable: false, api_name: "underwritingData"
    end
  end
end
