# frozen_string_literal: true

module Payabli
  module Types
    module DocumentSubjectType
      extend Payabli::Internal::Types::Enum

      BUSINESS = "business"
      PAYPOINT = "paypoint"
      PERSON = "person"
    end
  end
end
