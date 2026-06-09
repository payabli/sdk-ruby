# frozen_string_literal: true

module Payabli
  module Types
    class OcrResponseData < Internal::Types::Model
      field :result_data, -> { Payabli::Types::OcrResultData }, optional: true, nullable: false, api_name: "resultData"
    end
  end
end
