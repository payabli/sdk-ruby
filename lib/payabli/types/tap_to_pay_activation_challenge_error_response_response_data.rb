# frozen_string_literal: true

module Payabli
  module Types
    class TapToPayActivationChallengeErrorResponseResponseData < Internal::Types::Model
      field :result_code, -> { Integer }, optional: false, nullable: false, api_name: "resultCode"

      field :result_text, -> { String }, optional: false, nullable: false, api_name: "resultText"
    end
  end
end
