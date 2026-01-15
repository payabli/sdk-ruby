# frozen_string_literal: true

module PayabliSdk
  module Types
    module Methodall
      extend PayabliSdk::Internal::Types::Enum

      CARD = "card"
      ACH = "ach"
      CLOUD = "cloud"
      CHECK = "check"
      CASH = "cash"
    end
  end
end
