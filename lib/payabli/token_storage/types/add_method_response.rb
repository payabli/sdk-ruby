# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class AddMethodResponse < Internal::Types::Model
        field :response_data, -> { Payabli::TokenStorage::Types::AddMethodResponseResponseData }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
