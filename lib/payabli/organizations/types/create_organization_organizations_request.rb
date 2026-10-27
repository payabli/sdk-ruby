# frozen_string_literal: true

module Payabli
  module Organizations
    module Types
      class CreateOrganizationOrganizationsRequest < Internal::Types::Model
        extend Payabli::Internal::Types::Union

        member -> { Payabli::Types::CreateOrganizationWithInlineBusiness }

        member -> { Payabli::Types::CreateOrganizationWithBusinessReference }

        member -> { Payabli::Types::CreateOrganizationAllFields }
      end
    end
  end
end
