# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # A message associated with an outbound transfer.
      class TransferOutMessage < Internal::Types::Model
        field :id, -> { Integer }, optional: false, nullable: true, api_name: "Id"
        field :room_id, -> { Integer }, optional: false, nullable: true, api_name: "RoomId"
        field :user_id, -> { Integer }, optional: false, nullable: true, api_name: "UserId"
        field :user_name, -> { String }, optional: false, nullable: true, api_name: "UserName"
        field :content, -> { String }, optional: false, nullable: true, api_name: "Content"
        field :created_at, -> { String }, optional: false, nullable: true, api_name: "CreatedAt"
        field :message_type, -> { Integer }, optional: false, nullable: true, api_name: "MessageType"
        field :message_properties, -> { Payabli::QueryTypes::Types::TransferOutMessageProperties }, optional: false, nullable: true, api_name: "MessageProperties"
      end
    end
  end
end
