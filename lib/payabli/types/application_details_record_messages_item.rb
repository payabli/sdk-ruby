# frozen_string_literal: true

module Payabli
  module Types
    class ApplicationDetailsRecordMessagesItem < Internal::Types::Model
      field :content, -> { String }, optional: true, nullable: false
      field :created_at, -> { String }, optional: true, nullable: false, api_name: "createdAt"
      field :current_application_status, lambda {
        Integer
      }, optional: true, nullable: false, api_name: "currentApplicationStatus"
      field :current_application_sub_status, lambda {
        Integer
      }, optional: true, nullable: false, api_name: "currentApplicationSubStatus"
      field :id, -> { Integer }, optional: true, nullable: false
      field :message_type, -> { Integer }, optional: true, nullable: false, api_name: "messageType"
      field :original_application_status, lambda {
        Integer
      }, optional: true, nullable: false, api_name: "originalApplicationStatus"
      field :original_application_sub_status, lambda {
        Integer
      }, optional: true, nullable: false, api_name: "originalApplicationSubStatus"
      field :room_id, -> { Integer }, optional: true, nullable: false, api_name: "roomId"
      field :user_id, -> { Integer }, optional: true, nullable: false, api_name: "userId"
      field :user_name, -> { String }, optional: true, nullable: false, api_name: "userName"
    end
  end
end
