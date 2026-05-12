# frozen_string_literal: true

module Payabli
  module Types
    class ApplicationDataPayInServices < Internal::Types::Model
      field :ach, -> { Payabli::Types::ApplicationDataPayInServicesAch }, optional: false, nullable: false
      field :card, -> { Payabli::Types::ApplicationDataPayInServicesCard }, optional: false, nullable: false
      field :odp, -> { Payabli::Types::OdpSetup }, optional: true, nullable: false
    end
  end
end
