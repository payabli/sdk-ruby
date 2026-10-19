# frozen_string_literal: true

module Payabli
  module Types
    # Response for canceling a ghost card.
    class DeleteGhostCardResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

      field :response_data, -> { Payabli::Types::DeleteGhostCardResponseData }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
