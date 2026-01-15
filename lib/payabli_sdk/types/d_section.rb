# frozen_string_literal: true

module PayabliSdk
  module Types
    class DSection < Internal::Types::Model
      field :deposit_account, -> { PayabliSdk::Types::Bnk }, optional: true, nullable: false, api_name: "depositAccount"
      field :withdrawal_account, -> { PayabliSdk::Types::Bnk }, optional: true, nullable: false, api_name: "withdrawalAccount"
    end
  end
end
