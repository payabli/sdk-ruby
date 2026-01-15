# frozen_string_literal: true

module PayabliSdk
  module Types
    class NotificationQueryRecord < Internal::Types::Model
      field :content, -> { PayabliSdk::Types::NotificationContent }, optional: true, nullable: false
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :frequency, -> { PayabliSdk::Types::Frequencynotification }, optional: true, nullable: false
      field :last_updated, -> { String }, optional: true, nullable: false, api_name: "lastUpdated"
      field :method_, -> { PayabliSdk::Types::Methodnotification }, optional: true, nullable: false, api_name: "method"
      field :notification_id, -> { Integer }, optional: true, nullable: false, api_name: "notificationId"
      field :owner_id, -> { String }, optional: true, nullable: false, api_name: "ownerId"
      field :owner_name, -> { String }, optional: true, nullable: false, api_name: "ownerName"
      field :owner_type, -> { Integer }, optional: true, nullable: false, api_name: "ownerType"
      field :source, -> { String }, optional: true, nullable: false
      field :status, -> { Integer }, optional: true, nullable: false
      field :target, -> { String }, optional: true, nullable: false
    end
  end
end
