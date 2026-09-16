# frozen_string_literal: true

module Payabli
  module Taptopay
    module Types
      class TapToPayActivationChallengeRequest < Internal::Types::Model
        field :entry, -> { String }, optional: false, nullable: false

        field :device_id, -> { String }, optional: false, nullable: false, api_name: "deviceId"
      end
    end
  end
end
