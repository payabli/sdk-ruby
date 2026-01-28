# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class UpdateMethodRequest < Internal::Types::Model
        field :method_id, -> { String }, optional: false, nullable: false, api_name: "methodId"
        field :ach_validation, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "achValidation"
        field :body, -> { Payabli::TokenStorage::Types::RequestTokenStorage }, optional: false, nullable: false
      end
    end
  end
end
