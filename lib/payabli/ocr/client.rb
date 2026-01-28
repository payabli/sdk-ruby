# frozen_string_literal: true

module Payabli
  module Ocr
    class Client
      # @param client [Payabli::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Use this endpoint to upload an image file for OCR processing. The accepted file formats include PDF, JPG, JPEG,
      # PNG, and GIF. Specify the desired type of result (either 'bill' or 'invoice') in the path parameter
      # `typeResult`. The response will contain the OCR processing results, including extracted data such as bill
      # number, vendor information, bill items, and more.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Ocr::Types::FileContentImageOnly]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Ocr::Types::TypeResult] :type_result
      #
      # @return [Payabli::Ocr::Types::PayabliApiResponseOcr]
      def ocr_document_form(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/Import/ocrDocumentForm/#{params[:type_result]}",
          body: Payabli::Ocr::Types::FileContentImageOnly.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Ocr::Types::PayabliApiResponseOcr.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Use this endpoint to submit a Base64-encoded image file for OCR processing. The accepted file formats include
      # PDF, JPG, JPEG, PNG, and GIF. Specify the desired type of result (either 'bill' or 'invoice') in the path
      # parameter `typeResult`. The response will contain the OCR processing results, including extracted data such as
      # bill number, vendor information, bill items, and more.
      #
      # @param request_options [Hash]
      # @param params [Payabli::Ocr::Types::FileContentImageOnly]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Ocr::Types::TypeResult] :type_result
      #
      # @return [Payabli::Ocr::Types::PayabliApiResponseOcr]
      def ocr_document_json(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "/Import/ocrDocumentJson/#{params[:type_result]}",
          body: Payabli::Ocr::Types::FileContentImageOnly.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Ocr::Types::PayabliApiResponseOcr.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
