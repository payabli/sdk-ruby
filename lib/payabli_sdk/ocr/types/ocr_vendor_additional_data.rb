# frozen_string_literal: true

module PayabliSdk
  module Ocr
    module Types
      class OcrVendorAdditionalData < Internal::Types::Model
        field :web, -> { String }, optional: true, nullable: false
      end
    end
  end
end
