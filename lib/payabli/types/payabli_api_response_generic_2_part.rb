# frozen_string_literal: true

module Payabli
  module Types
    class PayabliApiResponseGeneric2Part < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
