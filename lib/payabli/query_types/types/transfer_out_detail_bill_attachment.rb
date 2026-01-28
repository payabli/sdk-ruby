# frozen_string_literal: true

module Payabli
  module QueryTypes
    module Types
      # Attachment for a bill.
      class TransferOutDetailBillAttachment < Internal::Types::Model
        field :ftype, -> { String }, optional: false, nullable: true
        field :filename, -> { String }, optional: false, nullable: true
        field :file_descriptor, -> { String }, optional: false, nullable: true, api_name: "fileDescriptor"
        field :furl, -> { String }, optional: false, nullable: true
        field :f_content, -> { String }, optional: false, nullable: true, api_name: "fContent"
      end
    end
  end
end
