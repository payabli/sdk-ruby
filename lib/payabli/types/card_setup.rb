# frozen_string_literal: true

module Payabli
  module Types
    class CardSetup < Internal::Types::Model
      field :accept_amex, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptAmex"
      field :accept_discover, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptDiscover"
      field :accept_mastercard, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptMastercard"
      field :accept_visa, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "acceptVisa"
    end
  end
end
