# frozen_string_literal: true

module Payabli
  module Types
    class GetPayLinkFromIdResponse < Internal::Types::Model
      field :response_data, -> { Payabli::Types::PayabliPages }, optional: true, nullable: false, api_name: "responseData"
    end
  end
end
