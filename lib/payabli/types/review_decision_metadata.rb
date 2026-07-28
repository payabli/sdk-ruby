# frozen_string_literal: true

module Payabli
  module Types
    # Details of a reviewer's decision, when one has been made.
    class ReviewDecisionMetadata < Internal::Types::Model
      field :decline_reason, -> { Payabli::Types::BankReviewDecisionReason }, optional: false, nullable: true, api_name: "declineReason"

      field :note, -> { String }, optional: false, nullable: true
    end
  end
end
