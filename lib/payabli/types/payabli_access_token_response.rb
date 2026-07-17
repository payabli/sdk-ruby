# frozen_string_literal: true

module Payabli
  module Types
    # Successful response from the token endpoint. Returns the access token, its lifetime, and any state echoed from the
    # request.
    class PayabliAccessTokenResponse < Internal::Types::Model
      field :token_type, -> { String }, optional: false, nullable: false

      field :access_token, -> { String }, optional: false, nullable: false

      field :expires_in, -> { Integer }, optional: false, nullable: false

      field :state, -> { String }, optional: true, nullable: false
    end
  end
end
