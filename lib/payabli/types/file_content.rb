# frozen_string_literal: true

module Payabli
  module Types
    # Contains details about a file. Max upload size is 30 MB.
    class FileContent < Internal::Types::Model
      field :f_content, -> { String }, optional: true, nullable: false, api_name: "fContent"
      field :filename, -> { String }, optional: true, nullable: false
      field :ftype, -> { Payabli::Types::FileContentFtype }, optional: true, nullable: false
      field :furl, -> { String }, optional: true, nullable: false
    end
  end
end
