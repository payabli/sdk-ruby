# frozen_string_literal: true

module Payabli
  module Types
    # Error response from the token endpoint when the request is invalid, for example when the client credentials are
    # wrong.
    class TokenErrorResponse < Internal::Types::Model
      field :error_type, -> { String }, optional: false, nullable: false, api_name: "errorType"

      field :error_message, -> { String }, optional: false, nullable: false, api_name: "errorMessage"
    end
  end
end
