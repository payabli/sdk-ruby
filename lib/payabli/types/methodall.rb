# frozen_string_literal: true

module Payabli
  module Types
    module Methodall
      extend Payabli::Internal::Types::Enum

      CARD = "card"
      ACH = "ach"
      CLOUD = "cloud"
      CHECK = "check"
      CASH = "cash"
    end
  end
end
