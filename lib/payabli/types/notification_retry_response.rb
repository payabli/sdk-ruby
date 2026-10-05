# frozen_string_literal: true

module Payabli
  module Types
    class NotificationRetryResponse < Internal::Types::Model
      field :message, -> { String }, optional: false, nullable: false
    end
  end
end
