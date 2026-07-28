# frozen_string_literal: true

module Payabli
  module Types
    module MoneyInService
      extend Payabli::Internal::Types::Enum

      ACH = "Ach"
      CARD = "Card"
      CLOUD = "Cloud"
      DEVICE = "Device"
      WALLET = "Wallet"
      CASH = "Cash"
      CHECK = "Check"
    end
  end
end
