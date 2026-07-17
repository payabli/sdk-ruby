# frozen_string_literal: true

module Payabli
  module Types
    class TokenizeAch < Internal::Types::Model
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"

      field :ach_account, -> { String }, optional: false, nullable: false, api_name: "achAccount"

      field :ach_account_type, -> { Payabli::Types::Achaccounttype }, optional: false, nullable: false, api_name: "achAccountType"

      field :ach_code, -> { String }, optional: true, nullable: false, api_name: "achCode"

      field :ach_holder, -> { String }, optional: false, nullable: false, api_name: "achHolder"

      field :ach_holder_type, -> { Payabli::Types::AchHolderType }, optional: true, nullable: false, api_name: "achHolderType"

      field :ach_routing, -> { String }, optional: false, nullable: false, api_name: "achRouting"
    end
  end
end
