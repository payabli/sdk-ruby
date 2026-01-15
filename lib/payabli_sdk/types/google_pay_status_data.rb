# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about the Google Pay service status.
    class GooglePayStatusData < Internal::Types::Model
      field :error_message, -> { String }, optional: true, nullable: false, api_name: "errorMessage"
      field :metadata, -> { PayabliSdk::Types::GooglePayMetadata }, optional: true, nullable: false
    end
  end
end
