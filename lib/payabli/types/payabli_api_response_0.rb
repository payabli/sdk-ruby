# frozen_string_literal: true

module Payabli
  module Types
    # General response for certain `moneyIn` and `moneyOut` endpoints.
    class PayabliApiResponse0 < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
      field :response_data, lambda {
        Payabli::Types::PayabliApiResponse0ResponseData
      }, optional: true, nullable: false, api_name: "responseData"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
