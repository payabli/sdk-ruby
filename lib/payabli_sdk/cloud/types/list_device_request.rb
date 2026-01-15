# frozen_string_literal: true

module PayabliSdk
  module Cloud
    module Types
      class ListDeviceRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false
        field :force_refresh, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "forceRefresh"
      end
    end
  end
end
