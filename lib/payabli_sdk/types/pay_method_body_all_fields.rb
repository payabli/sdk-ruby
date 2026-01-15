# frozen_string_literal: true

module PayabliSdk
  module Types
    # Model for the PaymentMethod object, includes all method types.
    class PayMethodBodyAllFields < Internal::Types::Model
      field :ach_account, -> { String }, optional: false, nullable: false, api_name: "achAccount"
      field :ach_account_type, -> { PayabliSdk::Types::Achaccounttype }, optional: true, nullable: false, api_name: "achAccountType"
      field :ach_code, -> { String }, optional: true, nullable: false, api_name: "achCode"
      field :ach_holder, -> { String }, optional: false, nullable: false, api_name: "achHolder"
      field :ach_routing, -> { String }, optional: false, nullable: false, api_name: "achRouting"
      field :cardcvv, -> { String }, optional: true, nullable: false
      field :cardexp, -> { String }, optional: true, nullable: false
      field :card_holder, -> { String }, optional: true, nullable: false, api_name: "cardHolder"
      field :cardnumber, -> { String }, optional: true, nullable: false
      field :cardzip, -> { String }, optional: true, nullable: false
      field :device, -> { String }, optional: true, nullable: false
      field :initator, -> { String }, optional: true, nullable: false
      field :method_, -> { PayabliSdk::Types::Methodall }, optional: true, nullable: false, api_name: "method"
      field :save_if_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "saveIfSuccess"
      field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
      field :stored_method_usage_type, -> { String }, optional: true, nullable: false, api_name: "storedMethodUsageType"
    end
  end
end
