# frozen_string_literal: true

module Payabli
  module Types
    class OrganizationQueryRecordServicesItem < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false
      field :enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :monthly_cost, -> { Integer }, optional: true, nullable: false, api_name: "monthlyCost"
      field :name, -> { String }, optional: true, nullable: false
      field :reseller, -> { Internal::Types::Boolean }, optional: true, nullable: false
      field :setup_cost, -> { Integer }, optional: true, nullable: false, api_name: "setupCost"
      field :tx_cost, -> { Integer }, optional: true, nullable: false, api_name: "txCost"
      field :tx_percent_cost, -> { Integer }, optional: true, nullable: false, api_name: "txPercentCost"
    end
  end
end
