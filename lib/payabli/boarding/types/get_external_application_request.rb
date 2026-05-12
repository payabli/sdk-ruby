# frozen_string_literal: true

module Payabli
  module Boarding
    module Types
      class GetExternalApplicationRequest < Internal::Types::Model
        field :app_id, -> { Integer }, optional: false, nullable: false, api_name: "appId"
        field :mail_2, -> { String }, optional: false, nullable: false, api_name: "mail2"
        field :send_email, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "sendEmail"
      end
    end
  end
end
