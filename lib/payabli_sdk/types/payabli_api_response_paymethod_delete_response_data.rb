# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayabliApiResponsePaymethodDeleteResponseData < Internal::Types::Model
      field :reference_id, -> { String }, optional: true, nullable: false, api_name: "referenceId"
      field :result_code, -> { Integer }, optional: true, nullable: false, api_name: "resultCode"
      field :result_text, -> { String }, optional: true, nullable: false, api_name: "resultText"
    end
  end
end
