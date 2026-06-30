# frozen_string_literal: true

module Payabli
  module Types
    # Response for a deposit funds request.
    class DepositFundsResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"

      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"

      field :response_data, -> { Internal::Types::Hash[String, Object] }, optional: false, nullable: true, api_name: "responseData"

      field :page_identifier, -> { String }, optional: false, nullable: true, api_name: "pageIdentifier"
    end
  end
end
