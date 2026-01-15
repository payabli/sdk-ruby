# frozen_string_literal: true

module PayabliSdk
  module Cloud
    module Types
      class DeviceEntry < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :idempotency_key, -> { String }, optional: true, nullable: false, api_name: "idempotencyKey"
        field :description, -> { String }, optional: true, nullable: false
        field :registration_code, -> { String }, optional: true, nullable: false, api_name: "registrationCode"
      end
    end
  end
end
