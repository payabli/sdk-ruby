# frozen_string_literal: true

module Payabli
  module MoneyOutTypes
    module Types
      # Payment method for reissuing a payout transaction. The reissue endpoint uses the payment method details
      # directly. It doesn't fall back to the vendor's managed payment method.
      # - `{ method: "vcard" }` - Reissue as a virtual card
      # - `{ method: "check" }` - Reissue as a paper check
      # - `{ method: "ach", achHolder: "...", achRouting: "...", achAccount: "...", achAccountType: "...",
      # achHolderType: "..." }` - Reissue as ACH with bank details
      class ReissuePaymentMethod < Internal::Types::Model
        field :method_, -> { String }, optional: false, nullable: false, api_name: "method"
        field :ach_holder, -> { String }, optional: true, nullable: false, api_name: "achHolder"
        field :ach_routing, -> { String }, optional: true, nullable: false, api_name: "achRouting"
        field :ach_account, -> { String }, optional: true, nullable: false, api_name: "achAccount"
        field :ach_account_type, -> { String }, optional: true, nullable: false, api_name: "achAccountType"
        field :ach_holder_type, -> { Payabli::Types::AchHolderType }, optional: true, nullable: false, api_name: "achHolderType"
      end
    end
  end
end
