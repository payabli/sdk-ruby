# frozen_string_literal: true

module Payabli
  module Types
    class AchSetup < Internal::Types::Model
      field :accept_ccd, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptCCD"
      field :accept_ppd, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptPPD"
      field :accept_web, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptWeb"
    end
  end
end
