# frozen_string_literal: true

module Payabli
  module Bill
    module Types
      class SetApprovedBillResponse < Internal::Types::Model
        field :response_data, -> { Integer }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
