# frozen_string_literal: true

module Payabli
  module Token
    module Types
      class CreateServerSideTokenRequest < Internal::Types::Model
        field :client_id, -> { String }, optional: false, nullable: false, api_name: "clientId"

        field :client_secret, -> { String }, optional: false, nullable: false, api_name: "clientSecret"

        field :state, -> { String }, optional: true, nullable: false

        field :permissions, -> { Internal::Types::Array[String] }, optional: true, nullable: false
      end
    end
  end
end
