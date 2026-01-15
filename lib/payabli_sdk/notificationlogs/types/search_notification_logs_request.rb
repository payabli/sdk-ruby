# frozen_string_literal: true

module PayabliSdk
  module Notificationlogs
    module Types
      class SearchNotificationLogsRequest < Internal::Types::Model
        field :page_size, -> { Integer }, optional: true, nullable: false, api_name: "PageSize"
        field :page, -> { Integer }, optional: true, nullable: false, api_name: "Page"
        field :body, -> { PayabliSdk::Notificationlogs::Types::NotificationLogSearchRequest }, optional: false, nullable: false
      end
    end
  end
end
