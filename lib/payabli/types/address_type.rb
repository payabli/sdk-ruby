# frozen_string_literal: true

module Payabli
  module Types
    module AddressType
      extend Payabli::Internal::Types::Enum

      LEGAL = "legal"
      BILLING = "billing"
      SHIPPING = "shipping"
      REMITTANCE = "remittance"
      PHYSICAL = "physical"
      MAILING = "mailing"
    end
  end
end
