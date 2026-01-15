# frozen_string_literal: true

module PayabliSdk
  module Types
    # Underwriting data is used to manage risk orchestration in the boarding application lifecycle.
    class UnderwritingData < Internal::Types::Model
      field :method_, -> { PayabliSdk::Types::UnderWritingMethod }, optional: false, nullable: false, api_name: "method"
      field :policy_id, -> { String }, optional: true, nullable: false, api_name: "policyId"
    end
  end
end
