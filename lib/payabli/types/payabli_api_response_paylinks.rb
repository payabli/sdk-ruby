# frozen_string_literal: true

module Payabli
  module Types
    class PayabliApiResponsePaylinks < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
      field :page_identifier, -> { String }, optional: false, nullable: true, api_name: "pageIdentifier"
      field :response_code, -> { Integer }, optional: false, nullable: false, api_name: "responseCode"
      field :response_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
