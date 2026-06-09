# frozen_string_literal: true

module Payabli
  module Types
    # Shape returned by every Payabli API error response. The `responseData`
    # object carries human-readable error context.
    class PayabliErrorBody < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"

      field :response_code, -> { Integer }, optional: true, nullable: false, api_name: "responseCode"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

      field :response_data, -> { Payabli::Types::PayabliErrorBodyResponseData }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
