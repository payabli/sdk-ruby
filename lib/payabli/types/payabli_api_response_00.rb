# frozen_string_literal: true

module Payabli
  module Types
    class PayabliApiResponse00 < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"
      field :response_data, lambda {
        Internal::Types::Hash[String, Internal::Types::Hash[String, Object]]
      }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
