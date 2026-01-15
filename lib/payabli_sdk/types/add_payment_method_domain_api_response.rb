# frozen_string_literal: true

module PayabliSdk
  module Types
    # Response for the add payment method domain operation.
    class AddPaymentMethodDomainApiResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
      field :pageidentifier, -> { String }, optional: false, nullable: false
      field :response_data, -> { PayabliSdk::Types::PaymentMethodDomainApiResponse }, optional: false, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
