# frozen_string_literal: true

module PayabliSdk
  module Types
    module FileContentFtype
      extend PayabliSdk::Internal::Types::Enum

      PDF = "pdf"
      DOC = "doc"
      DOCX = "docx"
      JPG = "jpg"
      JPEG = "jpeg"
      PNG = "png"
      GIF = "gif"
      TXT = "txt"
    end
  end
end
