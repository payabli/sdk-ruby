# frozen_string_literal: true

module PayabliSdk
  module Types
    module VendorDataResponsePaymentMethod
      extend PayabliSdk::Internal::Types::Enum

      VCARD = "vcard"
      ACH = "ach"
      CHECK = "check"
      CARD = "card"
    end
  end
end
