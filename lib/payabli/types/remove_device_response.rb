# frozen_string_literal: true

module Payabli
  module Types
    class RemoveDeviceResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"

      field :response_data, -> { String }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
