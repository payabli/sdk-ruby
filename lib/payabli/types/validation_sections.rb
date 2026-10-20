# frozen_string_literal: true

module Payabli
  module Types
    # The validation result for each section of the application.
    class ValidationSections < Internal::Types::Model
      field :business, -> { Payabli::Types::ValidationSection }, optional: false, nullable: false

      field :sales_and_payments, -> { Payabli::Types::ValidationSection }, optional: false, nullable: false, api_name: "salesAndPayments"

      field :banking, -> { Payabli::Types::ValidationSection }, optional: false, nullable: false

      field :people, -> { Payabli::Types::ValidationSection }, optional: false, nullable: false
    end
  end
end
