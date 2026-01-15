# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class UpdateMethodRequest < Internal::Types::Model
        field :method_id, -> { String }, optional: false, nullable: false, api_name: "methodId"
        field :ach_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "achValidation"
        field :body, -> { PayabliSdk::TokenStorage::Types::RequestTokenStorage }, optional: false, nullable: false
      end
    end
  end
end
