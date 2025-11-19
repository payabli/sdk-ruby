# frozen_string_literal: true

module Payabli
  module Types
    class Instrument < Internal::Types::Model
      field :ach_account, -> { String }, optional: false, nullable: false, api_name: "achAccount"
      field :ach_routing, -> { String }, optional: false, nullable: false, api_name: "achRouting"
      field :billing_address, -> { String }, optional: true, nullable: false, api_name: "billingAddress"
      field :billing_city, -> { String }, optional: true, nullable: false, api_name: "billingCity"
      field :billing_country, -> { String }, optional: true, nullable: false, api_name: "billingCountry"
      field :billing_state, -> { String }, optional: true, nullable: false, api_name: "billingState"
      field :billing_zip, -> { String }, optional: true, nullable: false, api_name: "billingZip"
    end
  end
end
