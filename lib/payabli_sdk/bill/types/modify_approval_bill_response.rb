# frozen_string_literal: true

module PayabliSdk
  module Bill
    module Types
      class ModifyApprovalBillResponse < Internal::Types::Model
        field :response_data, -> { Integer }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
