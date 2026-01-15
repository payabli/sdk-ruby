# frozen_string_literal: true

module PayabliSdk
  module Types
    # Response body for payment method deletion.
    class PayabliApiResponsePaymethodDelete < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :response_data, -> { PayabliSdk::Types::PayabliApiResponsePaymethodDeleteResponseData }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
