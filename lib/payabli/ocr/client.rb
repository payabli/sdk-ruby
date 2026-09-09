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

      # Use this endpoint to upload a document file for OCR processing as `multipart/form-data`, with the file in a
      # field named `file`. The accepted file formats include PDF, JPG, JPEG, PNG, and GIF. Specify the desired type of
      # result (either 'bill' or 'invoice') in the path parameter `typeResult`. The response will contain the OCR
      # processing results, including extracted data such as bill number, vendor information, bill items, and more. To
      # send the file as a Base64-encoded string in a JSON body instead, use `ocrDocumentJson`.
      #
      # @param request_options [Hash]
      # @param params [void]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::TypeResult] :type_result
      #
      # @example
      #   client.ocr.ocr_document_form(type_result: "typeResult")
      #
      # @return [Payabli::Types::PayabliApiResponseOcr]
      def ocr_document_form(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        body = Internal::Multipart::FormData.new

        body.add_part(params[:file].to_form_data_part(name: "file")) if params[:file]

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::Multipart::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Import/ocrDocumentForm/#{URI.encode_uri_component(params[:type_result].to_s)}",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseOcr.load(response.body)
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
      # @param params [Payabli::Ocr::Types::OcrDocumentJsonRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Payabli::Types::TypeResult] :type_result
      #
      # @example
      #   client.ocr.ocr_document_json(type_result: "typeResult")
      #
      # @return [Payabli::Types::PayabliApiResponseOcr]
      def ocr_document_json(request_options: {}, **params)
        params = Payabli::Internal::Types::Utils.normalize_keys(params)
        request_data = Payabli::Ocr::Types::OcrDocumentJsonRequest.new(params).to_h
        non_body_param_names = %w[typeResult]
        body = request_data.except(*non_body_param_names)

        headers = @client.auth_headers_for_endpoint(security: [{ "BearerAuth" => [] }, { "APIKeyAuth" => [] }])
        request = Payabli::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "Import/ocrDocumentJson/#{URI.encode_uri_component(params[:type_result].to_s)}",
          headers: headers,
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Payabli::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Payabli::Types::PayabliApiResponseOcr.load(response.body)
        else
          error_class = Payabli::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
