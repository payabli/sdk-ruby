# frozen_string_literal: true

module Payabli
  module Types
    class AddMethodResponse < Internal::Types::Model
      field :response_data, -> { Payabli::Types::AddMethodResponseResponseData }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
