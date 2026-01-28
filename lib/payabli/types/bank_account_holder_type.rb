# frozen_string_literal: true

module Payabli
  module Types
    module BankAccountHolderType
      extend Payabli::Internal::Types::Enum

      PERSONAL = "Personal"
      BUSINESS = "Business"
    end
  end
end
