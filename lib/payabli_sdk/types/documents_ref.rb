# frozen_string_literal: true

module PayabliSdk
  module Types
    class DocumentsRef < Internal::Types::Model
      field :filelist, -> { Internal::Types::Array[PayabliSdk::Types::PairFiles] }, optional: true, nullable: false
      field :zipfile, -> { String }, optional: true, nullable: false
    end
  end
end
