# frozen_string_literal: true

module Payabli
  module Types
    module VendorDataResponsePaymentMethod
      extend Payabli::Internal::Types::Enum

      VCARD = "vcard"
      ACH = "ach"
      CHECK = "check"
      CARD = "card"
    end
  end
end
