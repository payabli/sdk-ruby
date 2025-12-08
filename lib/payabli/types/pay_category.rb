# frozen_string_literal: true

module Payabli
  module Types
    class PayCategory < Internal::Types::Model
      field :description, -> { String }, optional: true, nullable: false
      field :label, -> { String }, optional: true, nullable: false
      field :name, -> { String }, optional: true, nullable: false
      field :optional_pay, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "optionalPay"
      field :order, -> { Integer }, optional: true, nullable: false
      field :quantity, -> { Integer }, optional: true, nullable: false
      field :show_description, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "showDescription"
      field :type, -> { String }, optional: true, nullable: false
      field :value, -> { String }, optional: true, nullable: false
    end
  end
end
