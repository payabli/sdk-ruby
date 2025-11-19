# frozen_string_literal: true

module Payabli
  module Ocr
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [Payabli::Ocr::Client]
      def initialize(client:)
        @client = client
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Ocr::Types::FileContentImageOnly]
      #
      # @return [Payabli::Ocr::Types::PayabliApiResponseOcr]
      def ocr_document_form(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "/Import/ocrDocumentForm/#{params[:type_result]}",
          body: Payabli::Ocr::Types::FileContentImageOnly.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Ocr::Types::PayabliApiResponseOcr.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end

      # @param request_options [Payabli::RequestOptions]
      #
      # @param params [Payabli::Ocr::Types::FileContentImageOnly]
      #
      # @return [Payabli::Ocr::Types::PayabliApiResponseOcr]
      def ocr_document_json(request_options: {}, **params)
        _request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || Payabli::Environment::SANDBOX,
          method: "POST",
          path: "/Import/ocrDocumentJson/#{params[:type_result]}",
          body: Payabli::Ocr::Types::FileContentImageOnly.new(params).to_h
        )
        begin
          _response = @client.send(_request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = _response.code.to_i
        if code.between?(200, 299)
          Payabli::Ocr::Types::PayabliApiResponseOcr.load(_response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(_response.body, code: code)
        end
      end
    end
  end
end
