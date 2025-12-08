# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # Response for card validation endpoint
      class ValidateResponse < Internal::Types::Model
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_data, -> { Payabli::MoneyIn::Types::ValidateResponseData }, optional: false, nullable: false, api_name: "responseData"
      end
    end
  end
end
