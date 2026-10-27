# frozen_string_literal: true

module Payabli
  module Types
    # The organization's billing information. Fields that aren't set return `null`.
    class InstrumentResponse < Internal::Types::Model
      field :ach_account, -> { String }, optional: false, nullable: true, api_name: "achAccount"

      field :ach_routing, -> { String }, optional: false, nullable: true, api_name: "achRouting"

      field :billing_address, -> { String }, optional: false, nullable: true, api_name: "billingAddress"

      field :billing_city, -> { String }, optional: false, nullable: true, api_name: "billingCity"

      field :billing_country, -> { String }, optional: false, nullable: true, api_name: "billingCountry"

      field :billing_state, -> { String }, optional: false, nullable: true, api_name: "billingState"

      field :billing_zip, -> { String }, optional: false, nullable: true, api_name: "billingZip"
    end
  end
end
