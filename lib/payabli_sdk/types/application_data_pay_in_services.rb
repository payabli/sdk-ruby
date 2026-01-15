# frozen_string_literal: true

module PayabliSdk
  module Types
    class ApplicationDataPayInServices < Internal::Types::Model
      field :ach, -> { PayabliSdk::Types::ApplicationDataPayInServicesAch }, optional: false, nullable: false
      field :card, -> { PayabliSdk::Types::ApplicationDataPayInServicesCard }, optional: false, nullable: false
      field :odp, -> { PayabliSdk::Types::OdpSetup }, optional: true, nullable: false
    end
  end
end
