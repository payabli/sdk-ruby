# frozen_string_literal: true

module Payabli
  module Types
    class PayMethodCloud < Internal::Types::Model
      field :device, -> { String }, optional: true, nullable: false

      field :method_, -> { Payabli::Types::PayMethodCloudMethod }, optional: false, nullable: false, api_name: "method"

      field :save_if_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "saveIfSuccess"
    end
  end
end
