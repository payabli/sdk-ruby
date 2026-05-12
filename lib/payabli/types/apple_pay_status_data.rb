# frozen_string_literal: true

module Payabli
  module Types
    # Details about the Apple Pay service status.
    class ApplePayStatusData < Internal::Types::Model
      field :error_message, -> { String }, optional: true, nullable: false, api_name: "errorMessage"
      field :metadata, -> { Payabli::Types::ApplePayMetadata }, optional: true, nullable: false
    end
  end
end
