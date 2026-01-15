# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about the Apple Pay service status.
    class ApplePayStatusData < Internal::Types::Model
      field :error_message, -> { String }, optional: true, nullable: false, api_name: "errorMessage"
      field :metadata, -> { PayabliSdk::Types::ApplePayMetadata }, optional: true, nullable: false
    end
  end
end
