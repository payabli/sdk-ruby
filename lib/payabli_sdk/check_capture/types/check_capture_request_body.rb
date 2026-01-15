# frozen_string_literal: true

module PayabliSdk
  module CheckCapture
    module Types
      class CheckCaptureRequestBody < Internal::Types::Model
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"
        field :front_image, -> { String }, optional: false, nullable: false, api_name: "frontImage"
        field :rear_image, -> { String }, optional: false, nullable: false, api_name: "rearImage"
        field :check_amount, -> { Integer }, optional: false, nullable: false, api_name: "checkAmount"
      end
    end
  end
end
