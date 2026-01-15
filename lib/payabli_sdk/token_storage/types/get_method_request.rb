# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class GetMethodRequest < Internal::Types::Model
        field :method_id, -> { String }, optional: false, nullable: false, api_name: "methodId"
        field :card_expiration_format, -> { Integer }, optional: true, nullable: false, api_name: "cardExpirationFormat"
        field :include_temporary, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "includeTemporary"
      end
    end
  end
end
