# frozen_string_literal: true

module Payabli
  module Billing
    module Types
      module GetProfileBillingRequestEntityType
        extend Payabli::Internal::Types::Enum

        ORGANIZATION = "Organization"
        PAYPOINT = "Paypoint"
        TEMPLATE = "Template"
        APPLICATION = "Application"
      end
    end
  end
end
