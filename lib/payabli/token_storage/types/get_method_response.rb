# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class GetMethodResponse < Internal::Types::Model
        field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
        field :response_data, lambda {
          Payabli::TokenStorage::Types::GetMethodResponseResponseData
        }, optional: true, nullable: false, api_name: "responseData"
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
