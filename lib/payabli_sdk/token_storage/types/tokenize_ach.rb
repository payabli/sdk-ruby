# frozen_string_literal: true

module PayabliSdk
  module TokenStorage
    module Types
      class TokenizeAch < Internal::Types::Model
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
        field :ach_account, -> { String }, optional: false, nullable: false, api_name: "achAccount"
        field :ach_account_type, -> { PayabliSdk::Types::Achaccounttype }, optional: false, nullable: false, api_name: "achAccountType"
        field :ach_code, -> { String }, optional: true, nullable: false, api_name: "achCode"
        field :ach_holder, -> { String }, optional: false, nullable: false, api_name: "achHolder"
        field :ach_holder_type, -> { PayabliSdk::Types::AchHolderType }, optional: true, nullable: false, api_name: "achHolderType"
        field :ach_routing, -> { String }, optional: false, nullable: false, api_name: "achRouting"
        field :device, -> { String }, optional: true, nullable: false
      end
    end
  end
end
