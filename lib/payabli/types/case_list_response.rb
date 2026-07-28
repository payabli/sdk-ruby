# frozen_string_literal: true

module Payabli
  module Types
    # A paginated list of cases.
    class CaseListResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::CaseListSummary }, optional: false, nullable: false

      field :records, -> { Internal::Types::Array[Payabli::Types::CaseResponse] }, optional: false, nullable: false
    end
  end
end
