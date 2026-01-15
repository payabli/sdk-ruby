# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class AddMethodRequest < Internal::Types::Model
        field :ach_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "achValidation"
        field :create_anonymous, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "createAnonymous"
        field :force_customer_creation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceCustomerCreation"
        field :temporary, -> { Internal::Types::Boolean }, optional: false, nullable: false
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :body, -> { PayabliSdk::TokenStorage::Types::RequestTokenStorage }, optional: false, nullable: false
      end
    end
  end
end
