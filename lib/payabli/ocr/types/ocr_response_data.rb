# frozen_string_literal: true

module Payabli
  module Ocr
    module Types
      class OcrResponseData < Internal::Types::Model
        field :result_data, lambda {
          Payabli::Ocr::Types::OcrResultData
        }, optional: true, nullable: false, api_name: "resultData"
      end
    end
  end
end
