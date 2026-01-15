# frozen_string_literal: true

module PayabliSdk
  module Types
    # Response payload for queries related to notifications
    class QueryResponseNotifications < Internal::Types::Model
      field :records, -> { Internal::Types::Array[PayabliSdk::Types::QueryResponseNotificationsRecordsItem] }, optional: true, nullable: false, api_name: "Records"
      field :summary, -> { PayabliSdk::Types::QuerySummary }, optional: true, nullable: false, api_name: "Summary"
    end
  end
end
