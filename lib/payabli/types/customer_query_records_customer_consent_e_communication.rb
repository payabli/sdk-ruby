# frozen_string_literal: true

module Payabli
  module Types
    # Describes the customer's email communications consent status.
    class CustomerQueryRecordsCustomerConsentECommunication < Internal::Types::Model
      field :status, -> { Integer }, optional: true, nullable: false
      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
