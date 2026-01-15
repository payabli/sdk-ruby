# frozen_string_literal: true

module PayabliSdk
  module Types
    class PaypointSummary < Internal::Types::Model
      field :amount_subs, -> { Integer }, optional: true, nullable: false, api_name: "amountSubs"
      field :amount_tx, -> { Integer }, optional: true, nullable: false, api_name: "amountTx"
      field :count_subs, -> { Integer }, optional: true, nullable: false, api_name: "countSubs"
      field :count_tx, -> { Integer }, optional: true, nullable: false, api_name: "countTx"
      field :customers, -> { Integer }, optional: true, nullable: false
    end
  end
end
