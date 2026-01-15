# frozen_string_literal: true

module PayabliSdk
  module Ocr
    module Types
      class OcrResponseData < Internal::Types::Model
        field :result_data, -> { PayabliSdk::Ocr::Types::OcrResultData }, optional: true, nullable: false, api_name: "resultData"
      end
    end
  end
end
