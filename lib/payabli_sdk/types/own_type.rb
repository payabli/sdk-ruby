# frozen_string_literal: true

module PayabliSdk
  module Types
    module OwnType
      extend PayabliSdk::Internal::Types::Enum

      LIMITED_LIABILITY_COMPANY = "Limited Liability Company"
      NON_PROFIT_ORG = "Non-Profit Org"
      PARTNERSHIP = "Partnership"
      PRIVATE_CORP = "Private Corp"
      PUBLIC_CORP = "Public Corp"
      TAX_EXEMPT = "Tax Exempt"
      GOVERNMENT = "Government"
      SOLE_PROPRIETOR = "Sole Proprietor"
    end
  end
end
