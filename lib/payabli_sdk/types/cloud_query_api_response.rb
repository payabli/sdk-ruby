# frozen_string_literal: true

module PayabliSdk
  module Types
    # Object containing details about cloud devices and their registration history.
    class CloudQueryApiResponse < Internal::Types::Model
      field :is_success, -> { Internal::Types::Boolean }, optional: true, nullable: false, api_name: "isSuccess"
      field :response_list, -> { Internal::Types::Array[PayabliSdk::Types::PoiDevice] }, optional: true, nullable: false, api_name: "responseList"
      field :response_text, -> { String }, optional: false, nullable: false, api_name: "responseText"
    end
  end
end
