# frozen_string_literal: true

module Payabli
  module CheckCapture
    module Types
      # Request model for check capture processing.
      class CheckCaptureRequest < Internal::Types::Model
        field :entry_point, -> { String }, optional: false, nullable: false, api_name: "entryPoint"
        field :front_image, -> { String }, optional: false, nullable: false, api_name: "frontImage"
        field :rear_image, -> { String }, optional: false, nullable: false, api_name: "rearImage"
        field :check_amount, -> { Integer }, optional: false, nullable: false, api_name: "checkAmount"
      end
    end
  end
end
