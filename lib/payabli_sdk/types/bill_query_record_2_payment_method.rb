# frozen_string_literal: true

module PayabliSdk
  module Types
    module BillQueryRecord2PaymentMethod
      extend PayabliSdk::Internal::Types::Enum

      VCARD = "vcard"
      ACH = "ach"
      CHECK = "check"
      CARD = "card"
      MANAGED = "managed"
    end
  end
end
