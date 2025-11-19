# frozen_string_literal: true

module Payabli
  module Types
    # Details about a business.
    class BusinessSection < Internal::Types::Model
      field :baddress, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :baddress_1, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "baddress1"
      field :bcity, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :bcountry, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :bstate, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :btype, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :bzip, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :dbaname, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :ein, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :faxnumber, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :legalname, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :license, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :licstate, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :maddress, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :maddress_1, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false, api_name: "maddress1"
      field :mcity, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :mcountry, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :mstate, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :mzip, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :phonenumber, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :startdate, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :taxfillname, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :visible, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :website, -> { Payabli::Types::TemplateElement }, optional: true, nullable: false
      field :additional_data, lambda {
        Payabli::Types::TemplateAdditionalDataSection
      }, optional: true, nullable: false, api_name: "additionalData"
    end
  end
end
