# frozen_string_literal: true

module Payabli
  module Paypoint
    module Types
      class MigratePaypointResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
