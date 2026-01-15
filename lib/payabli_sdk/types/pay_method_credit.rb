# frozen_string_literal: true

module PayabliSdk
  module Types
    class PayMethodCredit < Internal::Types::Model
      field :cardcvv, -> { String }, optional: true, nullable: false
      field :cardexp, -> { String }, optional: false, nullable: false
      field :card_holder, -> { String }, optional: true, nullable: false, api_name: "cardHolder"
      field :cardnumber, -> { String }, optional: false, nullable: false
      field :cardzip, -> { String }, optional: true, nullable: false
      field :initiator, -> { String }, optional: true, nullable: false
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
      field :save_if_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "saveIfSuccess"
    end
  end
end
