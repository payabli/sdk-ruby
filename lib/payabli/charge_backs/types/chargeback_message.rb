# frozen_string_literal: true

module Payabli
  module ChargeBacks
    module Types
      class ChargebackMessage < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: false, api_name: "Id"
        field :room_id, -> { Integer }, optional: false, nullable: false, api_name: "RoomId"
        field :user_id, -> { Integer }, optional: false, nullable: false, api_name: "UserId"
        field :user_name, -> { String }, optional: false, nullable: false, api_name: "UserName"
        field :content, -> { String }, optional: false, nullable: false, api_name: "Content"
        field :created_at, -> { String }, optional: false, nullable: false, api_name: "CreatedAt"
        field :message_type, -> { Integer }, optional: false, nullable: false, api_name: "MessageType"
        field :message_properties, lambda {
          Internal::Types::Hash[String, String]
        }, optional: true, nullable: false, api_name: "MessageProperties"
      end
    end
  end
end
