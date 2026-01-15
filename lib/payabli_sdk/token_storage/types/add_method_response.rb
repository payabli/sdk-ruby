# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class AddMethodResponse < Internal::Types::Model
        field :response_data, -> { PayabliSdk::TokenStorage::Types::AddMethodResponseResponseData }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
