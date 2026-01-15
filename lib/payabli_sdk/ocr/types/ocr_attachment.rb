# frozen_string_literal: true

module PayabliSdk
  module Ocr
    module Types
      class OcrAttachment < Internal::Types::Model
        field :ftype, -> { String }, optional: true, nullable: false
        field :filename, -> { String }, optional: true, nullable: false
        field :file_descriptor, -> { String }, optional: true, nullable: false, api_name: "fileDescriptor"
        field :furl, -> { String }, optional: true, nullable: false
        field :f_content, -> { String }, optional: true, nullable: false, api_name: "fContent"
      end
    end
  end
end
