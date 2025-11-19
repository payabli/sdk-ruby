# frozen_string_literal: true

module Payabli
  module Types
    module MethodElementSettingsApplePayButtonType
      extend Payabli::Internal::Types::Enum

      PLAIN = "plain"
      BUY = "buy"
      DONATE = "donate"
      CHECK_OUT = "check-out"
      BOOK = "book"
      CONTINUE = "continue"
      TOP_UP = "top-up"
      ORDER = "order"
      RENT = "rent"
      SUPPORT = "support"
      CONTRIBUTE = "contribute"
      TIP = "tip"
      PAY = "pay"
    end
  end
end
