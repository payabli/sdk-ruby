# frozen_string_literal: true

module Payabli
  module Types
    class VCardQueryResponse < Internal::Types::Model
      field :summary, -> { Payabli::Types::VCardSummary }, optional: true, nullable: false, api_name: "Summary"
      field :records, -> { Internal::Types::Array[Payabli::Types::VCardRecord] }, optional: true, nullable: false, api_name: "Records"
    end
  end
end
