# frozen_string_literal: true

module Payabli
  module Types
    # Response from the Approve or disapprove a bill endpoint.
    class SetApprovedBillResponse < Internal::Types::Model
      field :response_data, -> { Integer }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
