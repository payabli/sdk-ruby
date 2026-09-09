# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class OcrDocumentJsonRequest < Internal::Types::Model
        field :type_result, -> { String }, optional: false, nullable: false, api_name: "typeResult"

        field :ftype, -> { Payabli::Types::FileContentFtype }, optional: true, nullable: false

        field :filename, -> { String }, optional: true, nullable: false

        field :furl, -> { String }, optional: true, nullable: false

        field :f_content, -> { String }, optional: true, nullable: false, api_name: "fContent"
      end
    end
  end
end
