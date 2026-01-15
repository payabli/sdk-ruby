# frozen_string_literal: true

module PayabliSdk
  module Ocr
    module Types
      class FileContentImageOnly < Internal::Types::Model
        field :ftype, -> { PayabliSdk::Types::FileContentFtype }, optional: true, nullable: false
        field :filename, -> { String }, optional: true, nullable: false
        field :furl, -> { String }, optional: true, nullable: false
        field :f_content, -> { String }, optional: true, nullable: false, api_name: "fContent"
      end
    end
  end
end
