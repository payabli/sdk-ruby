# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class OcrDocumentFormRequest < Internal::Types::Model
        field :type_result, -> { String }, optional: false, nullable: false, api_name: "typeResult"
      end
    end
  end
end
