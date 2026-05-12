# frozen_string_literal: true

module Payabli
  module Types
    class QueryUserResponse < Internal::Types::Model
      field :records, -> { Internal::Types::Array[Payabli::Types::UserQueryRecord] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
