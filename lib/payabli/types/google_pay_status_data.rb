# frozen_string_literal: true

module Payabli
  module Types
    # Details about the Google Pay service status.
    class GooglePayStatusData < Internal::Types::Model
      field :error_message, -> { String }, optional: true, nullable: false, api_name: "errorMessage"
      field :metadata, -> { Payabli::Types::GooglePayMetadata }, optional: true, nullable: false
    end
  end
end
