# frozen_string_literal: true

module Payabli
  module Types
    # Describes the reason for a failed operation and how to resolve it.
    class PayabliApiResponseError400ResponseData < Internal::Types::Model
      field :explanation, -> { String }, optional: true, nullable: false
      field :todo_action, -> { String }, optional: true, nullable: false, api_name: "todoAction"
    end
  end
end
