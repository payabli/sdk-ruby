# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      # General response for GetPaid endpoint supporting multiple payment methods
      class PayabliApiResponseGetPaid < Internal::Types::Model
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
        field :response_data, lambda {
          Payabli::MoneyIn::Types::GetPaidResponseData
        }, optional: false, nullable: false, api_name: "responseData"
      end
    end
  end
end
