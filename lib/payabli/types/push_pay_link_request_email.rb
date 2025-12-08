# frozen_string_literal: true

module Payabli
  module Types
    class PushPayLinkRequestEmail < Internal::Types::Model
      field :additional_emails, -> { Internal::Types::Array[String] }, optional: true, nullable: false, api_name: "additionalEmails"
      field :attach_file, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "attachFile"
    end
  end
end
