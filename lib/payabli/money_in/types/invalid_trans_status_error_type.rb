# frozen_string_literal: true

module Payabli
  module MoneyIn
    module Types
      class InvalidTransStatusErrorType < Internal::Types::Model
        field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
      end
    end
  end
end
