# frozen_string_literal: true

module PayabliSdk
  module Types
    class ProcessingSection < Internal::Types::Model
      field :avgmonthly, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :binperson, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :binphone, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :binweb, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :bsummary, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :highticketamt, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :mcc, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :sub_footer, -> { String }, optional: true, nullable: false, api_name: "subFooter"
      field :sub_header, -> { String }, optional: true, nullable: false, api_name: "subHeader"
      field :ticketamt, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :when_charged, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenCharged"
      field :when_delivered, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenDelivered"
      field :when_provided, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenProvided"
      field :when_refunded, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "whenRefunded"
    end
  end
end
