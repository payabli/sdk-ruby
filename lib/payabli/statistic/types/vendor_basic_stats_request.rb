# frozen_string_literal: true

module Payabli
  module Statistic
    module Types
      class VendorBasicStatsRequest < Internal::Types::Model
        field :freq, -> { String }, optional: false, nullable: false
        field :id_vendor, -> { Integer }, optional: false, nullable: false, api_name: "idVendor"
        field :mode, -> { String }, optional: false, nullable: false
        field :parameters, -> { Internal::Types::Hash[String, String] }, optional: true, nullable: false
      end
    end
  end
end
