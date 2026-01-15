# frozen_string_literal: true

module PayabliSdk
  module PaymentLink
    module Types
      class GetPayLinkFromIdResponse < Internal::Types::Model
        field :response_data, -> { PayabliSdk::PaymentLink::Types::GetPayLinkFromIdResponseResponseData }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
