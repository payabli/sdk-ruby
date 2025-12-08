# frozen_string_literal: true

module Payabli
  module Types
    class DSection < Internal::Types::Model
      field :deposit_account, -> { Payabli::Types::Bnk }, optional: true, nullable: false, api_name: "depositAccount"
      field :withdrawal_account, -> { Payabli::Types::Bnk }, optional: true, nullable: false, api_name: "withdrawalAccount"
    end
  end
end
