# frozen_string_literal: true

module Payabli
  module Types
    module PersonAddressType
      extend Payabli::Internal::Types::Enum

      LEGAL = "legal"
      BILLING = "billing"
      SHIPPING = "shipping"
      REMITTANCE = "remittance"
      MAILING = "mailing"
      PHYSICAL = "physical"
      RESIDENTIAL = "residential"
    end
  end
end
