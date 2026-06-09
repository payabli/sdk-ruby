# frozen_string_literal: true

module Payabli
  module Types
    # Object with detailed error context.
    class PayabliErrorBodyResponseData < Internal::Types::Model
      field :explanation, -> { String }, optional: true, nullable: false

      field :todo_action, -> { String }, optional: true, nullable: false, api_name: "todoAction"
    end
  end
end
