# frozen_string_literal: true

module Payabli
  module Types
    # Case metadata, populated as the case progresses. Null until verification completes.
    class CaseMetadata < Internal::Types::Model
      field :verification, -> { Payabli::Types::BankVerificationMetadata }, optional: false, nullable: true

      field :review_decision, -> { Payabli::Types::ReviewDecisionMetadata }, optional: false, nullable: true, api_name: "reviewDecision"
    end
  end
end
