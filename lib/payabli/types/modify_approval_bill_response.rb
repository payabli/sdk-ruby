# frozen_string_literal: true

module Payabli
  module Types
    # Response from approval-modification endpoints.
    class ModifyApprovalBillResponse < Internal::Types::Model
      field :response_data, -> { Integer }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
