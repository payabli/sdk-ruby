# frozen_string_literal: true

module PayabliSdk
  module Types
    class SplitFundingContent < Internal::Types::Model
      field :account_id, -> { String }, optional: true, nullable: false, api_name: "accountId"
      field :amount, -> { Integer }, optional: true, nullable: false
      field :description, -> { String }, optional: true, nullable: false
      field :recipient_entry_point, -> { String }, optional: true, nullable: false, api_name: "recipientEntryPoint"
    end
  end
end
