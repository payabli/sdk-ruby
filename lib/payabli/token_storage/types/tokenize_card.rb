# frozen_string_literal: true

module Payabli
  module TokenStorage
    module Types
      class TokenizeCard < Internal::Types::Model
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
        field :cardcvv, -> { String }, optional: true, nullable: false
        field :cardexp, -> { String }, optional: false, nullable: false
        field :card_holder, -> { String }, optional: false, nullable: false, api_name: "cardHolder"
        field :cardnumber, -> { String }, optional: false, nullable: false
        field :cardzip, -> { String }, optional: true, nullable: false
      end
    end
  end
end
