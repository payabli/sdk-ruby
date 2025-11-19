# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class OcrVendorAdditionalData < Internal::Types::Model
        field :web, -> { String }, optional: true, nullable: false
      end
    end
  end
end
