# frozen_string_literal: true

module Payabli
  module Types
    module EntityTypeName
      extend Payabli::Internal::Types::Enum

      ORGANIZATION = "Organization"
      PAYPOINT = "Paypoint"
      CUSTOMER = "Customer"
      TEMPLATE = "Template"
      APPLICATION = "Application"
      BANK_ACCOUNT = "BankAccount"
      ADDRESS = "Address"
    end
  end
end
