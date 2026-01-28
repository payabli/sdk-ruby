# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      # Object containing the information needed to convert a temporary token to a permanent token.
      class ConvertToken < Internal::Types::Model
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
        field :token_id, -> { String }, optional: false, nullable: false, api_name: "tokenId"
      end
    end
  end
end
