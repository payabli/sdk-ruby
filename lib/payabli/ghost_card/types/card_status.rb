# frozen_string_literal: true

module Payabli
  module GhostCard
    module Types
      module CardStatus
        extend Payabli::Internal::Types::Enum

        ACTIVE = "Active"
        INACTIVE = "Inactive"
        CANCELLED = "Cancelled"
        EXPIRED = "Expired"
      end
    end
  end
end
