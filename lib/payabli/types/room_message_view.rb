# frozen_string_literal: true

module Payabli
  module Types
    # A note on a case.
    class RoomMessageView < Internal::Types::Model
      field :id, -> { Integer }, optional: false, nullable: false

      field :user_id, -> { Integer }, optional: false, nullable: false, api_name: "userId"

      field :content, -> { String }, optional: false, nullable: false

      field :created_at, -> { String }, optional: false, nullable: false, api_name: "createdAt"

      field :updated_at, -> { String }, optional: false, nullable: true, api_name: "updatedAt"
    end
  end
end
