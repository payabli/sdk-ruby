# frozen_string_literal: true

module Payabli
  module Types
    # Error response for a Tap to Pay activation challenge request.
    # `responseData` carries the same status code as the HTTP response
    # and a message describing the refusal.
    class TapToPayActivationChallengeErrorResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

      field :response_data, -> { Payabli::Types::TapToPayActivationChallengeErrorResponseResponseData }, optional: false, nullable: false, api_name: "responseData"
    end
  end
end
