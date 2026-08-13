# frozen_string_literal: true

module Payabli
  module Types
    # A page of billing profiles that belong to an organization, returned by the
    # List profiles endpoint. This is the data behind the Profile Library table in
    # the Payabli Portal.
    class BillingProfileQueryResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::BillingProfileSummary }, optional: false, nullable: false

      field :records, -> { Internal::Types::Array[Payabli::Types::BillingProfileRecord] }, optional: false, nullable: false
    end
  end
end
