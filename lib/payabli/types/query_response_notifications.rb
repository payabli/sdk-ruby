# frozen_string_literal: true

module Payabli
  module Types
    # Response payload for queries related to notifications
    class QueryResponseNotifications < Internal::Types::Model
      field :records, lambda {
        Internal::Types::Array[Payabli::Types::QueryResponseNotificationsRecordsItem]
      }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { Payabli::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
