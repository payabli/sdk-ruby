# frozen_string_literal: true

module Payabli
  module Types
    module SubscriptionType
      extend Payabli::Internal::Types::Enum

      REGULAR = "Regular"
      BALANCE_DRIVEN = "BalanceDriven"
    end
  end
end
