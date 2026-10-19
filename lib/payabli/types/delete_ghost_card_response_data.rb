# frozen_string_literal: true

module Payabli
  module Types
    class DeleteGhostCardResponseData < Internal::Types::Model
      field :delete_type, -> { String }, optional: true, nullable: false, api_name: "deleteType"

      field :card_token, -> { String }, optional: true, nullable: false, api_name: "cardToken"
    end
  end
end
