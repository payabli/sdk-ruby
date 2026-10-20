# frozen_string_literal: true

module Payabli
  module Types
    module BusinessDetailResponseLegalStructure
      extend Payabli::Internal::Types::Enum

      LIMITED_LIABILITY_COMPANY = "LimitedLiabilityCompany"
      CORPORATION = "Corporation"
      PARTNERSHIP = "Partnership"
      SOLE_PROPRIETORSHIP = "SoleProprietorship"
      NON_PROFIT = "NonProfit"
      GOVERNMENT = "Government"
      S_CORPORATION = "SCorporation"
    end
  end
end
