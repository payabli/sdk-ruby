# frozen_string_literal: true

module Payabli
  module Types
    class PaymentMethodDomainGeneralResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :pageidentifier, -> { String }, optional: true, nullable: false
      field :response_data, -> { Payabli::Types::PaymentMethodDomainApiResponse }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
