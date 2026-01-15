# frozen_string_literal: true

module PayabliSdk
  module Types
    # Details about the status of the Google Pay service.
    class GooglePayData < Internal::Types::Model
      field :data, -> { PayabliSdk::Types::GooglePayStatusData }, optional: true, nullable: false
      field :is_enabled, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isEnabled"
    end
  end
end
