# frozen_string_literal: true

module Payabli
  module Businesses
    module Types
      module UpdateBusinessRequestLegalStructure
        extend Payabli::Internal::Types::Enum

        LIMITED_LIABILITY_COMPANY = "limited-liability-company"
        LLC = "llc"
        CORPORATION = "corporation"
        PARTNERSHIP = "partnership"
        SOLE_PROPRIETORSHIP = "sole-proprietorship"
        NON_PROFIT = "non-profit"
        GOVERNMENT = "government"
        S_CORP = "s-corp"
        S_CORPORATION = "s-corporation"
      end
    end
  end
end
