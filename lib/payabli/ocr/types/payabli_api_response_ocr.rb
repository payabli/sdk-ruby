# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class PayabliApiResponseOcr < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :response_code, -> { Integer }, optional: false, nullable: false, api_name: "responseCode"
        field :response_data, -> { Payabli::Ocr::Types::OcrResponseData }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
