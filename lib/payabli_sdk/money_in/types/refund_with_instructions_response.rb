# frozen_string_literal: true

module PayabliSdk
  module MoneyIn
    module Types
      class RefundWithInstructionsResponse < Internal::Types::Model
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
        field :is_success, -> { Internal::Types::Boolean }, optional: false, nullable: false, api_name: "isSuccess"
        field :response_data, -> { PayabliSdk::MoneyIn::Types::ResponseDataRefunds }, optional: false, nullable: false, api_name: "responseData"
        field :pageidentifier, -> { String }, optional: true, nullable: false
      end
    end
  end
end
