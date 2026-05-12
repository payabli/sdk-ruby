# frozen_string_literal: true

module Payabli
  module Cloud
    module Types
      class AddDeviceResponse < Internal::Types::Model
        field :page_identifier, -> { String }, optional: true, nullable: false, api_name: "pageIdentifier"
        field :response_data, -> { String }, optional: true, nullable: false, api_name: "responseData"
      end
    end
  end
end
