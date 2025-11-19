# frozen_string_literal: true

module Payabli
  module Types
    class Ach < Internal::Types::Model
      field :ach_account, -> { String }, optional: false, nullable: false, api_name: "achAccount"
      field :ach_account_type, lambda {
        Payabli::Types::Achaccounttype
      }, optional: true, nullable: false, api_name: "achAccountType"
      field :ach_code, -> { String }, optional: true, nullable: false, api_name: "achCode"
      field :ach_holder, -> { String }, optional: false, nullable: false, api_name: "achHolder"
      field :ach_holder_type, lambda {
        Payabli::Types::AchHolderType
      }, optional: true, nullable: false, api_name: "achHolderType"
      field :ach_routing, -> { String }, optional: false, nullable: false, api_name: "achRouting"
      field :device, -> { String }, optional: true, nullable: false
      field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
    end
  end
end
