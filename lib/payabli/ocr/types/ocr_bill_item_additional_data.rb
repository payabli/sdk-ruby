# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class OcrBillItemAdditionalData < Internal::Types::Model
        field :category, -> { String }, optional: true, nullable: false
        field :currency_code, -> { String }, optional: true, nullable: false
        field :type, -> { String }, optional: true, nullable: false
        field :reference_number, -> { String }, optional: true, nullable: false
      end
    end
  end
end
