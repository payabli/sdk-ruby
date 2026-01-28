# frozen_string_literal: true

module Payabli
  module Types
    module BillQueryRecord2PaymentMethod
      extend Payabli::Internal::Types::Enum

      VCARD = "vcard"
      ACH = "ach"
      CHECK = "check"
      CARD = "card"
      MANAGED = "managed"
    end
  end
end
