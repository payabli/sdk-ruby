# frozen_string_literal: true

module PayabliSdk
  module MoneyOutTypes
    module Types
      # Payment method object for vendor payouts.
      # - `{ method: "managed" }` - Managed payment method
      # - `{ method: "vcard" }` - Virtual card payment method
      # - `{ method: "check" }` - Check payment method
      # - `{ method: "ach", achHolder: "...", achRouting: "...", achAccount: "...", achAccountType: "..." }` - ACH
      # payment method with bank details
      # - `{ method: "ach", storedMethodId: "..." }` - ACH payment method using stored method ID
      class AuthorizePaymentMethod < Internal::Types::Model
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
        field :ach_holder, -> { String }, optional: true, nullable: false, api_name: "achHolder"
        field :ach_routing, -> { String }, optional: true, nullable: false, api_name: "achRouting"
        field :ach_account, -> { String }, optional: true, nullable: false, api_name: "achAccount"
        field :ach_account_type, -> { String }, optional: true, nullable: false, api_name: "achAccountType"
        field :ach_code, -> { String }, optional: true, nullable: false, api_name: "achCode"
        field :ach_holder_type, -> { PayabliSdk::Types::AchHolderType }, optional: true, nullable: false, api_name: "achHolderType"
        field :stored_method_id, -> { String }, optional: true, nullable: false, api_name: "storedMethodId"
        field :initiator, -> { String }, optional: true, nullable: false
        field :stored_method_usage_type, -> { String }, optional: true, nullable: false, api_name: "storedMethodUsageType"
      end
    end
  end
end
