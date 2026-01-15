# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayabliApiResponseError400 < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"
      field :response_data, -> { PayabliSdk::Types::PayabliApiResponseError400ResponseData }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: true, nullable: false, api_name: "responseText"
    end
  end
end
