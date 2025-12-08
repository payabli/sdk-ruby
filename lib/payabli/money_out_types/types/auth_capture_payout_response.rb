# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      class AuthCapturePayoutResponse < Internal::Types::Model
        field :response_code, -> { Integer }, optional: false, nullable: false, api_name: "responseCode"
        field :page_identifier, -> { String }, optional: false, nullable: true, api_name: "pageIdentifier"
        field :room_id, -> { Integer }, optional: false, nullable: false, api_name: "roomId"
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :response_data, -> { Payabli::MoneyOutTypes::Types::AuthCapturePayoutResponseData }, optional: false, nullable: false, api_name: "responseData"
      end
    end
  end
end
