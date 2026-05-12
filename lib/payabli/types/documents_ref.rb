# frozen_string_literal: true

module Payabli
  module Types
    class DocumentsRef < Internal::Types::Model
      field :filelist, -> { Internal::Types::Array[Payabli::Types::PairFiles] }, optional: true, nullable: false
      field :zipfile, -> { String }, optional: true, nullable: false
    end
  end
end
