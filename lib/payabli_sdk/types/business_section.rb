# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about a business.
    class BusinessSection < Internal::Types::Model
      field :baddress, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :baddress_1, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "baddress1"
      field :bcity, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :bcountry, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :bstate, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :btype, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :bzip, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :dbaname, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :ein, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :faxnumber, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :legalname, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :license, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :licstate, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :maddress, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :maddress_1, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false, api_name: "maddress1"
      field :mcity, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :mcountry, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :mstate, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :mzip, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :phonenumber, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :startdate, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :taxfillname, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :website, -> { PayabliSdk::Types::TemplateElement }, optional: true, nullable: false
      field :additional_data, -> { PayabliSdk::Types::TemplateAdditionalDataSection }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
