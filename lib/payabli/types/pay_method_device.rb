# frozen_string_literal: true

module Payabli
  module Types
    # The required fields for a payment made with a semi-integrated device.
    class PayMethodDevice < Internal::Types::Model
      field :device, -> { String }, optional: false, nullable: false

      field :method_, -> { Payabli::Types::PayMethodDeviceMethod }, optional: false, nullable: false, api_name: "method"

      field :save_if_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "saveIfSuccess"
    end
  end
end
