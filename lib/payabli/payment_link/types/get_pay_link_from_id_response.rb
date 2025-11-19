# frozen_string_literal: true

module Payabli
  module PaymentLink
    module Types
      class GetPayLinkFromIdResponse < Internal::Types::Model
        field :response_data, lambda {
          Payabli::PaymentLink::Types::GetPayLinkFromIdResponseResponseData
        }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
