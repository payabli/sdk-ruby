# frozen_string_literal: true

module Payabli
  module Types
    # Describes the customer's SMS communications consent status.
    class CustomerQueryRecordsCustomerConsentSms < Internal::Types::Model
      field :status, -> { Integer }, optional: true, nullable: false
      field :updated_at, -> { String }, optional: true, nullable: false, api_name: "updatedAt"
    end
  end
end
