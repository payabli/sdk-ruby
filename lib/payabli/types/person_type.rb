# frozen_string_literal: true

module Payabli
  module Types
    module PersonType
      extend Payabli::Internal::Types::Enum

      OWNER = "Owner"
      DIRECTOR = "Director"
      CONTACT = "Contact"
      SIGNER = "Signer"
      AUTHORIZED_USER = "AuthorizedUser"
      EMPLOYEE = "Employee"
    end
  end
end
