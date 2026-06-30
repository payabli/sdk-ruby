# frozen_string_literal: true

module Payabli
  module MoneyOut
    module Types
      class RenewVCardRequest < Internal::Types::Model
        field :card_token, -> { String }, optional: false, nullable: false, api_name: "cardToken"

        field :expiration_date, -> { String }, optional: false, nullable: false, api_name: "expirationDate"
      end
    end
  end
end
