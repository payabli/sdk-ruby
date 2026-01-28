# frozen_string_literal: true

module Payabli
  module Types
    # Underwriting data is used to manage risk orchestration in the boarding application lifecycle.
    class UnderwritingDataResponse < Internal::Types::Model
      field :method_, -> { Payabli::Types::UnderWritingMethod }, optional: true, nullable: false, api_name: "method"
      field :policy_id, -> { String }, optional: true, nullable: false, api_name: "policyId"
    end
  end
end
