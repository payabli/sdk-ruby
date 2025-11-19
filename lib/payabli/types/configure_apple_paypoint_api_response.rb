# frozen_string_literal: true

module Payabli
  module Types
    class ConfigureApplePaypointApiResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"
      field :response_data, lambda {
        Payabli::Types::ApplePayPaypointRegistrationData
      }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      field :room_id, -> { Integer }, optional: true, nullable: false, api_name: "roomId"
    end
  end
end
